TOPNAME = top

VNAME = V$(TOPNAME)

BUILD_DIR = $(VPU_HOME)/build
OBJ_DIR = $(BUILD_DIR)/obj_dir
BIN = $(BUILD_DIR)/$(VNAME)
$(shell mkdir -p $(BUILD_DIR))

# Verilator
VERILATOR=verilator
# Generate C++ in executable form
VERILATOR_FLAGS += --top-module $(TOPNAME) +incdir+vsrc/include
VERILATOR_FLAGS += -Wall 
VERILATOR_FLAGS += -Wno-DECLFILENAME
VERILATOR_FLAGS += --Wno-UNUSED
# VERILATOR_FLAGS += --report-only 
# VERILATOR_FLAGS += -Werror-

VERILATOR_FLAGS += --timescale "1ns/1ns" --no-timing
VERILATOR_FLAGS += -cc --exe --build --trace -MMD \
				-O3 --x-assign fast --x-initial fast
# Accelerate speed
VERILATOR_FLAGS += -j 8

INC_PATH += $(VPU_HOME)/csrc/include $(VPU_HOME)/csrc/isa/include 
# INC_PATH += $(shell sdl2-config --cflags | sed 's/-I//g')

C_FLAGS = $(addprefix -CFLAGS , $(INC_PATH:%=-I%))
C_FLAGS += -CFLAGS "-D__GUEST_ISA__=riscv32"
C_FLAGS += -CFLAGS -DTOP_NAME="\"V$(TOPNAME)\""

# Read the CONFIG_DIFFTEST definition from autoconf.h
CONFIG_DIFFTEST := $(shell grep -E '^#define CONFIG_DIFFTEST[ \t]+1' $(VPU_HOME)/csrc/include/generated/autoconf.h | awk '{print $$3}')

# Check if CONFIG_DIFFTEST is defined and equals 1
ifeq ($(CONFIG_DIFFTEST), 1)
    NPC_FLAGS += -d $(NEMU_HOME)/build/riscv32-nemu-interpreter-so 
endif

# NPC_FLAGS += $(ARGS)
# NPC_FLAGS += --log=$(BUILD_DIR)/npc-log.txt
NPC_FLAGS += -b
NPC_FLAGS += -i $(IMAGE)

VSRCS += $(shell find $(abspath $(VPU_HOME)/vsrc) -name "*.v" -or -name "*.sv")
CSRCS += $(shell find $(abspath $(VPU_HOME)/csrc) -name "*.c" -or -name "*.cc" -or -name "*.cpp")
HSRCS += $(shell find $(abspath $(VPU_HOME)/csrc) -name "*.h")
LDFLAGS += -lLLVM-14 -lreadline 
LDFLAGS += -lSDL2 -lSDL2_image

default: $(BIN)
	
$(BIN): $(VSRCS) $(CSRCS) $(HSRCS)
	@rm -rf $(OBJ_DIR)
	$(VERILATOR) $(C_FLAGS) $(VERILATOR_FLAGS) \
	-top $(TOPNAME) $(VSRCS) $(CSRCS) \
	$(addprefix -LDFLAGS , $(LDFLAGS)) \
	--Mdir $(OBJ_DIR) -o $(BIN) \

run: $(BIN)
	$(BUILD_DIR)/$(VNAME) $(NPC_FLAGS)

wave:
	gtkwave $(BUILD_DIR)/wave.vcd

menuconfig:
	cd $(VPU_HOME)/csrc && make menuconfig && cd ..

sim: run wave

clean:
	rm -rf $(BUILD_DIR)

.PHONY: default menuconfig clean run perf

