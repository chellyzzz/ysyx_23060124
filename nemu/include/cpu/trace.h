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

#ifndef __CPU_TRACE_H__
#define __CPU_TRACE_H__

#include <common.h>
#include <device/map.h>
#include <cpu/decode.h>

#ifdef CONFIG_ITRACE

#define DASM_PRINTBUF_SIZE 128
#define RingBuffSize 20

typedef struct
{
  char logbuf[DASM_PRINTBUF_SIZE];
}RingBuff_Type;

int iringbuf_push(Decode *s);
void iringbuf_print();

#endif

#ifdef CONFIG_DTRACE
void dtrace_read(paddr_t addr, int len, IOMap *map);
void dtrace_write(paddr_t addr, int len, word_t data, IOMap *map);
#endif

#ifdef CONFIG_ETRACE
void etrace_print(word_t NO, vaddr_t epc, vaddr_t mtvec, word_t mstatus);
#endif

#ifdef CONFIG_MTRACE
void print_out_of_bound();
void mtrace_push(paddr_t addr, int len, paddr_t pc, bool is_write, word_t wdata);
#endif

#endif

