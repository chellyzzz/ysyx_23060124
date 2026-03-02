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

#include <cpu/cpu.h>

#include <stdio.h>

void sdb_mainloop();
FILE *dcache_trace_fp = NULL;

void engine_start() {
  // dcache_trace_fp = fopen("data_trace.bin", "w");
  if (dcache_trace_fp == NULL) {
    printf("Failed to open data_trace.bin\n");
  }

#ifdef CONFIG_TARGET_AM
  cpu_exec(-1);
#else
  /* Receive commands from user. */
  sdb_mainloop();
#endif

  if (dcache_trace_fp != NULL) {
    fclose(dcache_trace_fp);
  }
}
