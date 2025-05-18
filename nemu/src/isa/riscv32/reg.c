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


const char *vregs[] = {
  "v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7",
  "v8", "v9", "v10", "v11", "v12", "v13", "v14", "v15",
  "v16", "v17", "v18", "v19", "v20", "v21", "v22", "v23",
  "v24", "v25", "v26", "v27", "v28", "v29", "v30", "v31"
};


const char *csrs[] = {
  "mtevc", "mepc", "mstatus", "mcause"
};
void isa_reg_display() {
  for(int i = 0;i < sizeof(regs)/sizeof(regs[0]); i++){
    printf("%3s[%02d]: 0x%08x\t", regs[i], i, cpu.gpr[i]);
    if((i+1) % 4 == 0) printf("\n");
  }

  printf("\n");
  printf("=== Vector Registers (vreg[N]) ===\n");
  // for (int i = 0; i < 32; i++) {
  //   printf("%3s: ", vregs[i]);
  //   for (int j = 0; j < 16 && j < VLEN_BYTES; j++) {
  //     printf("%02x ", cpu.vstate.vreg[i][j]);
  //   }
  //   printf("...\n");
  // }

  for (int i = 0; i < 32; i++) {
    printf("%3s: ", vregs[i]);
    for (int j = 0; j < VLEN_BYTES; j += 4) {
      uint32_t val;
      memcpy(&val, &cpu.vstate.vreg[i][j], 4);  // 从字节数组安全读取32位整数
      printf("0x%08x ", val);
    }
    printf("...\n");
  }

  printf("\n=== Vector State ===\n");
  printf("vl     = %lu\n", cpu.vstate.vl);
  printf("vstart = %lu\n", cpu.vstate.vstart);
  printf("vtype  = 0x%lx\n", cpu.vstate.vtype);
  printf("vill   = %s\n", cpu.vstate.vill ? "true" : "false");

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
