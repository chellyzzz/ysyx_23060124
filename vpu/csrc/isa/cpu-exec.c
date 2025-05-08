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
#include "Vtop.h"
#include <isa.h>
#include <cpu/cpu.h>
#include <cpu/trace.h>
#include <cpu/decode.h>
#include "Vtop___024root.h"

// performance counters

CPU_state cpu = {};
uint64_t cycles = 0;
uint64_t ins_cnt = 0;

#define MAX_INST_TO_PRINT 11

static VerilatedContext* contextp;; 
static Vtop* top;
static VerilatedVcdC* vcd;
static word_t instr;

// #define MAX_DEADS 100000

#ifdef MAX_DEADS  
bool dead_detector = true;
int dead_cycles   = 0;
#endif


// cpu exec
void reg_update(){  
  #ifdef MAX_DEADS
  if(dead_detector){
    if(cpu.pc == top->rootp->ysyxSoCFull__DOT__asic__DOT__cpu__DOT__cpu__DOT__ifu_pc_next){
      dead_cycles ++;
    }else{
      dead_cycles = 0;
    }
    if(dead_cycles > MAX_DEADS){
      printf("Dead loop detected, pc = " FMT_WORD "\n", cpu.pc);
      exit(1);
    }
  }
  #endif
  cpu.gpr[0]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_0;
  cpu.gpr[1]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_1;
  cpu.gpr[2]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_2;
  cpu.gpr[3]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_3;
  cpu.gpr[4]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_4;
  cpu.gpr[5]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_5;
  cpu.gpr[6]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_6;
  cpu.gpr[7]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_7;
  cpu.gpr[8]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_8;
  cpu.gpr[9]  = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_9;
  cpu.gpr[10] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_10;
  cpu.gpr[11] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_11;
  cpu.gpr[12] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_12;
  cpu.gpr[13] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_13;
  cpu.gpr[14] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_14;
  cpu.gpr[15] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_15;
  cpu.gpr[16] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_16;
  cpu.gpr[17] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_17;
  cpu.gpr[18] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_18;
  cpu.gpr[19] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_19;
  cpu.gpr[20] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_20;
  cpu.gpr[21] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_21;
  cpu.gpr[22] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_22;
  cpu.gpr[23] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_23;
  cpu.gpr[24] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_24;
  cpu.gpr[25] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_25;
  cpu.gpr[26] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_26;
  cpu.gpr[27] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_27;
  cpu.gpr[28] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_28;
  cpu.gpr[29] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_29;
  cpu.gpr[30] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_30;
  cpu.gpr[31] = top->rootp->top__DOT__cpu__DOT__regfile__DOT__regfile_31;

  cpu.csr.mcause = 11;
  // cpu.csr.mstatus = top->rootp->ysyxSoCFull__DOT__asic__DOT__cpu__DOT__cpu__DOT__Csrs__DOT__mstatus;
  // cpu.csr.mepc = top->rootp->ysyxSoCFull__DOT__asic__DOT__cpu__DOT__cpu__DOT__Csrs__DOT__mepc;
  // cpu.csr.mtvec = top->rootp->ysyxSoCFull__DOT__asic__DOT__cpu__DOT__cpu__DOT__Csrs__DOT__mtvec;
  cpu.pc = top->rootp->top__DOT__cpu__DOT__ifu__DOT__pc_next;
  return;
}
#ifdef CONFIG_ITRACE
void disasm_pc(Decode* s){
  char *p = s->logbuf;
  p += snprintf(p, sizeof(s->logbuf), FMT_WORD ":", s->pc);
  int ilen = 4;
  int i;
  uint8_t *inst = (uint8_t *)&s->isa.inst.val;
  for (i = ilen - 1; i >= 0; i --) {
    p += snprintf(p, 4, " %02x", inst[i]);
  } 
  int ilen_max = MUXDEF(CONFIG_ISA_x86, 8, 4);
  int space_len = ilen_max - ilen;
  if (space_len < 0) space_len = 0;
  space_len = space_len * 3 + 1;
  memset(p, ' ', space_len);
  p += space_len;

  disassemble(p, s->logbuf + sizeof(s->logbuf) - p,
      MUXDEF(CONFIG_ISA_x86, s->snpc, s->pc), (uint8_t *)&s->isa.inst.val, ilen);
}
#endif
void verilator_sync_init(VerilatedContext* contextp_sdb, Vtop* top_sdb, VerilatedVcdC* vcd_sdb){
  contextp = contextp_sdb;
  top = top_sdb;  
  vcd = vcd_sdb;
}

void decode_pc(Decode* s){
  s->pc = top->rootp->top__DOT__cpu__DOT__ifu__DOT__pc;
  s->snpc = top->rootp->top__DOT__cpu__DOT__ifu__DOT__pc + 4;
  s->dnpc = top->rootp->top__DOT__cpu__DOT__ifu__DOT__pc_next;
  // s->isa.inst.val = top->rootp->ysyxSoCFull__DOT__asic__DOT__cpu__DOT__cpu__DOT____Vcellout__ifu2idu_regs__o_ins;
  instr = s->isa.inst.val;
  #ifdef CONFIG_ITRACE
      disasm_pc(s);
      iringbuf_push(s);
  #endif
  return;
}

void exec_once(Decode *s){
    cycles ++;
    top->reset = 0;
    top->clock = 0;
    top->eval();
    #ifdef CONFIG_WAVE
      contextp->timeInc(1);
      vcd->dump(contextp->time());
    #endif  
    top->clock = 1;
    top->eval();

    reg_update();
    decode_pc(s);
    #ifdef CONFIG_WAVE
      contextp->timeInc(1);
      vcd->dump(contextp->time());
    #endif
    return;
}

static int trace_and_difftest(Decode *s, vaddr_t dnpc) {
        #ifdef CONFIG_DIFFTEST
        if(top->rootp->top__DOT__cpu__DOT__wbu__DOT__diff){
          if(!difftest_step(s->pc, s->dnpc)) {
            return 0;
          }
        }
        #endif
        return 1;
}

void cpu_exec(uint64_t n){
    Decode s;
    int g_print_step = n <= MAX_INST_TO_PRINT && n >= 0 ? n : 0;
    uint64_t max = n;
    for(; max > 0; max--){
      if(if_end()){
        printf("Program execution has ended. To restart the program, exit NPC and run again.\n");
        Log("npc: %s at pc = " FMT_WORD,
        (hit_goodtrap() ? ANSI_FMT("HIT GOOD TRAP", ANSI_FG_GREEN) :
          ANSI_FMT("HIT BAD TRAP", ANSI_FG_RED)),
        cpu.pc);       
        // printf("\nPerformance counters\n");
        // printf("    cycles      : %ld\n", cycles);
        // printf("    instrs      : %ld\n", ins_cnt);
        // printf("              Fetch per cycles: %ld\n", ifu_delay_end /ins_cnt);
        // printf("              Cache hit rates :  %f\n", (float)(ins_cnt - icache_miss) / (float)ins_cnt);
        // printf("    Load  instrs: %ld\n", load_cnt);
        // printf("              Load  per cycles: %ld\n", load_delay_end /load_cnt);
        // printf("    Store instrs: %ld\n", store_cnt);
        // printf("              Store per cycles: %ld\n", store_delay_end/store_cnt);
        // printf("    Brch  instrs: %ld\n", brch_cnt);
        // printf("    Jal   instrs: %ld\n", jal_cnt);
        // printf("    csr   instrs: %ld\n", csr_cnt);
        // float ipc = (float)ins_cnt / (float)cycles;
        // printf("    IPC:          %f\n", ipc); 
        break;
      }
        exec_once(&s);
        #ifdef CONFIG_ITRACE
        if(g_print_step > 0){
          printf("%s\n",s.logbuf);
          g_print_step --;
        }
        #endif
        if(!trace_and_difftest(&s, s.dnpc)){
          break;
        }
    }
    return;
}
bool if_end(){
  return (top->rootp->top__DOT__cpu__DOT__exu_wbu_regs__DOT__o_ebreak == 1);
}

int hit_goodtrap(){
  return (cpu.gpr[10] == 0);
}
