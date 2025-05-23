/***************************************************************************************
* Copyright (c) 2014-2022 Zihao Yu, Nanjing University
*
* NEMU is licensed under Mulan PSL v2.
* You can use this software according to the terms and conditions of the Mulan PSL v2.
* You may obtain a copy of Mulan PSL v2 at:
*          http://license.coscl.org.cn/MulanPSL2
*
* THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
* EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
* MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
*
* See the Mulan PSL v2 for more details.
***************************************************************************************/

#include <isa.h>
#include <cpu/cpu.h>
#include <cpu/trace.h>
#include <readline/readline.h>
#include <readline/history.h>
#include "sdb.h"
#include <memory/paddr.h>

static int is_batch_mode = false;
void init_regex();
#ifdef CONFIG_WP
void init_wp_pool();
void wp_display();
void wp_create(char *args, word_t res);
void wp_delete(int num);

#else 
void init_wp_pool() {};
void wp_display() {};
void wp_create(char *args, word_t res) {};
void wp_delete(int num) {};
#endif

#ifdef CONFIG_FTRACE
  #ifdef CONFIG_FTRACE_HALF_WAY
    bool ftrace_enable = false;
  #else
    bool ftrace_enable = true;
  #endif
#endif

/* We use the `readline' library to provide more flexibility to read from stdin. */
static char* rl_gets() {
  static char *line_read = NULL;

  if (line_read) {
    free(line_read);
    line_read = NULL;
  }

  line_read = readline("(nemu) ");

  if (line_read && *line_read) {
    add_history(line_read);
  }

  return line_read;
}

static int cmd_c(char *args) {
  cpu_exec(-1);
  return 0;
}


static int cmd_q(char *args) {
  nemu_state.state =NEMU_QUIT;
  return -1;
}

static int cmd_si(char *args) {
  int n =0;
  if(args == NULL)  n=1;
  else 
    sscanf(args,"%d",&n);
  cpu_exec(n);
  return 0;
}



static int cmd_info(char *args) {

  if(args==NULL){
    printf("no info parameters!\n");
    return 1;
  }
  if(strcmp(args,"r")==0) {
    isa_reg_display();
  }
  #ifdef CONFIG_WP
  if(strcmp(args,"w")==0) {
    wp_display();
  } 
  #endif
  if(strcmp(args,"csr")==0) {
    isa_csr_display();
  }
  #ifdef CONFIG_MTRACE
  if(strcmp(args,"m")==0) {
    print_out_of_bound();
  }
  #endif
  return 0;
}

static int cmd_d(char *args) {
  
  char *arg=strtok(args," ");
  if(arg == NULL){
    printf("lose parameters!\n");
    return 0;
  }
  else if(strtok(NULL," ") != NULL){
    printf("too many args!\n");
    return 0;
  }
  else {
    int num = atoi(arg);
    wp_delete(num);
    return 0;
  }
}

static int cmd_t(char *args) {
    FILE *input_file = fopen("./tools/gen-expr/input", "r");
    if (input_file == NULL) {
        printf("Failed to open input file.\n");
        return 1;
    }

    char expression[1000]; 
    word_t expected_result;
    int tests=0;
    int errors = 0;
    char line[1000];

    while (fgets(line, sizeof(line), input_file) != NULL) {
      tests++;
        expected_result = atoi(strtok(line," "));
        char *tmp = strtok(NULL, "\n");
        strcpy(expression, tmp);
        bool success = true;
        word_t result = expr(expression, &success);

        if (success) {
            if(expected_result != result) {
                printf("expected:%u\tresult:%u\n",expected_result,result);
                printf("%s\tTest Failed!\n",expression);
                errors ++;
            }
        } else {
            printf("Error evaluating expression: %s\n", expression);
        }
    }

    fclose(input_file);
    printf("\ntotal tests: %d\nerrors: %d\n", tests,errors);
    return 0;
}

static int cmd_x(char *args) {
  if(args == NULL){
    printf("no memory parameters!\n");
    return 1;
  }
  char *argn=strtok(args," ");
  int n=atoi(argn);
  if(n == 0){
  printf("miss parameters!\n");
    return 0;
  }
  char *arg2=strtok(NULL,"\0");
  bool success= true;
  word_t res = expr(arg2, &success);
  if(!success){
    printf("error expr!\n");
    assert(0);
  }

  else{
    paddr_t addr=res;
    for (int i=0;i<n;i++){

    if(i==0)  printf("%#010x:\t",addr);
    else if(i!=0 && i%4==0)  printf("\n%#010x:\t",addr);
    printf("%#010x\t\t",paddr_read(addr,4));
    addr+=4;
    }
    printf("\n");
  }
   
  return 0;
}
static int cmd_w(char *args) {
  if(args == NULL){
    printf("lose parameters!\n");
    return 0;
  }
  bool success= true;
  word_t res = expr(args, &success);
  if(!success){
    printf("wrong expr!\n");
    //assert(0);
    return 0;
  }
  else {
     wp_create(args, res);
     return 0;
  }
}

 static int cmd_b(char *args) {
        char arg12[20];
        strcpy(arg12,"$pc==");
        strcat(arg12,args);
        printf("%s",arg12);
      cmd_w(arg12);
    return 0;
 }

 static int cmd_i(char *args) {
    #ifdef CONFIG_ITRACE
      iringbuf_print(); 
    #else
      printf("itrace is not enabled!\n");
    #endif
    return 0;
 }

static int cmd_print(char *args, bool hex_format) {
  if(args == NULL){
    printf("no expression parameters!\n");
    return 1;
  }

  bool success = true;
  word_t res = expr(args, &success);
  if(!success){
    printf("wrong expr!\n");
    return 0;
  }

  if (hex_format) {
    printf("%s = 0x%x\n", args, res);
  } else {
    printf("%s = %u\n", args, res);
  }

  return 0;
}

static int cmd_p(char *args) {
  return cmd_print(args, false);
}

static int cmd_px(char *args) {
  return cmd_print(args, true);
}

static int cmd_ft(char *args) {
  #ifndef CONFIG_FTRACE
    printf("ftrace is not enabled!\n");
    return 0;
  #else
  if(args == NULL){
    printf("please enter on\\off!\n");
    return 1;
  }
  if(strcmp(args,"on")==0) {
    if(ftrace_enable){
      printf("ftrace is already on!\n");
      return 0;
    }
    else {
      ftrace_enable = true;
      printf("ftrace is on!\n");
      return 0;
    }
  }
  else if(strcmp(args,"off")==0) {
    if(!ftrace_enable){
      printf("ftrace is already off!\n");
      return 0;
    }
    else {
      ftrace_enable = false;
      printf("ftrace is off!\n");
      return 0;
    }  
  }
  else {
    printf("wrong para! please enter on\\off!\n");
    return 1;
  }
  #endif
}


static int cmd_help(char *args);

static struct {
  const char *name;
  const char *description;
  int (*handler) (char *);
} cmd_table [] = {
  { "help", "Display information about all supported commands", cmd_help },
  { "c", "Continue the execution of the program", cmd_c },
  { "q", "Exit NEMU", cmd_q },
  { "si", "step program n times,default n=1", cmd_si },
  { "info", "Print -r Register Status -w monitor point -m memory trace", cmd_info },
  { "d", "delete monitor point n", cmd_d },
  { "w", "create watchpoint if CONFIG_WP enabled", cmd_w },
  { "x", "scan memory", cmd_x },
  { "p", "Expression evaluation", cmd_p },
  { "px", "Expression evaluation in hex", cmd_px },
  { "b", "set breakpoint if CONFIG_WP enabled", cmd_b },
  { "t", "test for expr", cmd_t },
  { "i", "print current instructions", cmd_i },
  { "f", "turn on or off fucntrace when running program halfway, always off by default", cmd_ft},  
  /* TODO: Add more commands */

};

#define NR_CMD ARRLEN(cmd_table)

static int cmd_help(char *args) {
  /* extract the first argument */
  char *arg = strtok(NULL, " ");
  int i;

  if (arg == NULL) {
    /* no argument given */
    for (i = 0; i < NR_CMD; i ++) {
      printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
    }
  }
  else {
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(arg, cmd_table[i].name) == 0) {
        printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
        return 0;
      }
    }
    printf("Unknown command '%s'\n", arg);
  }
  return 0;
}

void sdb_set_batch_mode() {
  is_batch_mode = true;
}

void sdb_mainloop() {
  if (is_batch_mode) {
    cmd_c(NULL);
    return;
  }
  for (char *str; (str = rl_gets()) != NULL; ) {

    char *str_end = str + strlen(str);

    /* extract the first token as the command */
    char *cmd = strtok(str, " ");
    if (cmd == NULL) { continue; }

    /* treat the remaining string as the arguments,
     * which may need further parsing
     */
    char *args = cmd + strlen(cmd) + 1;
    if (args >= str_end) {
      args = NULL;
    }

#ifdef CONFIG_DEVICE
    extern void sdl_clear_event_queue();
    sdl_clear_event_queue();
#endif

    int i;
    for (i = 0; i < NR_CMD; i ++) {
      if (strcmp(cmd, cmd_table[i].name) == 0) {
        if (cmd_table[i].handler(args) < 0) { return; }
        break;
      }
    }

    if (i == NR_CMD) { printf("Unknown command '%s'\n", cmd); }
  }
}

void init_sdb() {
  /* Compile the regular expressions. */
  init_regex();

  /* Initialize the watchpoint pool. */
  IFDEF(CONFIG_WP, init_wp_pool());
}
