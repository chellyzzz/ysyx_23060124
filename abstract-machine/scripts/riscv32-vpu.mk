include $(AM_HOME)/scripts/isa/riscv.mk
include $(AM_HOME)/scripts/platform/vpu.mk
# COMMON_CFLAGS += -march=rv32e_zicsr -mabi=ilp32e  # overwrite
# LDFLAGS       += -melf32lriscv                    # overwrite

COMMON_CFLAGS += -march=rv32gv -mabi=ilp32
LDFLAGS       += -melf32lriscv

AM_SRCS += riscv/npc/libgcc/div.S \
           riscv/npc/libgcc/muldi3.S \
           riscv/npc/libgcc/multi3.c \
           riscv/npc/libgcc/ashldi3.c \
           riscv/npc/libgcc/unused.c
