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
#include "local-include/reg.h"

const char *regs[] = {
  "$0", "ra", "sp", "gp", "tp", "t0", "t1", "t2",
  "s0", "s1", "a0", "a1", "a2", "a3", "a4", "a5",
  "a6", "a7", "s2", "s3", "s4", "s5", "s6", "s7",
  "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"
};

const char *csrs[] = {
  "mtevc", "mepc", "mstatus", "mcause"
};
void isa_reg_display() {
  for(int i = 0;i < sizeof(regs)/sizeof(regs[0]); i++){
    printf("%3s[%02d]: 0x%08x\t", regs[i], i, cpu.gpr[i]);
    if((i+1) % 4 == 0) printf("\n");
  }
}

void isa_csr_display(){
  for(int i = 0;i < sizeof(csrs)/sizeof(csrs[0]); i++){
    word_t *ptr = (word_t *)&cpu.csr + i;
    printf("%3s: 0x%08x\t", csrs[i], *ptr);
    if((i+1) % 4 == 0) printf("\n");
  }
}

word_t isa_reg_str2val(const char *s, bool *success) {

  for(int i = 0; i < sizeof(regs) / sizeof(regs[0]); i++){
      if(strncmp(s, regs[i], strlen(regs[i])) == 0){
        // printf("reg: %s\n", *s);
        *success =true;
        return cpu.gpr[i];
      }
  }
      *success =false;
      return 0;
}
