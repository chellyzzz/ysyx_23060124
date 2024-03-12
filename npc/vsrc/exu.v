`include "para_defines.v"

module ysyx_23060124_exu(
  input [`ysyx_23060124_ISA_WIDTH - 1:0] src1,
  input [`ysyx_23060124_ISA_WIDTH - 1:0] src2,
  input if_unsigned,
  input [`ysyx_23060124_ISA_WIDTH - 1:0] i_pc,
  input [`ysyx_23060124_ISA_WIDTH - 1:0] imm,
  input [`ysyx_23060124_OPT_WIDTH - 1:0] exu_opt,
  input [`ysyx_23060124_OPT_WIDTH - 1:0] load_opt,
  input [`ysyx_23060124_OPT_WIDTH - 1:0] store_opt,
  input [`ysyx_23060124_OPT_WIDTH - 1:0] brch_opt,
  input [`ysyx_23060124_EXU_SEL_WIDTH - 1:0] i_src_sel,
  output [`ysyx_23060124_ISA_WIDTH - 1:0] o_res,
  output o_zero
);

wire [`ysyx_23060124_ISA_WIDTH-1:0] alu_src1,alu_src2;
wire [`ysyx_23060124_ISA_WIDTH - 1:0] alu_res, lsu_res, brch_res;
wire carry;
ysyx_23060124_MuxKeyWithDefault #(1<<`ysyx_23060124_EXU_SEL_WIDTH, `ysyx_23060124_EXU_SEL_WIDTH, `ysyx_23060124_ISA_WIDTH) mux_src1 (alu_src1, i_src_sel, `ysyx_23060124_ISA_WIDTH'b0, {
    `ysyx_23060124_EXU_SEL_REG, src1,
    `ysyx_23060124_EXU_SEL_IMM, src1,
    `ysyx_23060124_EXU_SEL_PC4, i_pc,
    `ysyx_23060124_EXU_SEL_PCI, i_pc
  });

ysyx_23060124_MuxKeyWithDefault #(1<<`ysyx_23060124_EXU_SEL_WIDTH, `ysyx_23060124_EXU_SEL_WIDTH, `ysyx_23060124_ISA_WIDTH) mux_src2 (alu_src2, i_src_sel, `ysyx_23060124_ISA_WIDTH'b0, {
    `ysyx_23060124_EXU_SEL_REG, src2,
    `ysyx_23060124_EXU_SEL_IMM, imm,
    `ysyx_23060124_EXU_SEL_PC4, `ysyx_23060124_ISA_WIDTH'h4,
    `ysyx_23060124_EXU_SEL_PCI, imm
});

ysyx_23060124_alu exu_alu(
  .src1(alu_src1),
  .src2(alu_src2),
  .if_unsigned(if_unsigned),
  .opt(exu_opt),
  .res(alu_res),
  .carry(carry)
);

ysyx_23060124_lsu exu_lsu(
  .lsu_src2(src2),
  .alu_res(alu_res),
  .load_opt(load_opt),
  .store_opt(store_opt),
  .lsu_res(lsu_res)
);

// always @(*)begin
//   case(brch_opt)
//   `ysyx_23060124_OPT_BRCH_BGE: brch_res = (alu_res == 0) ? 1'b1 : 1'b0;
//   `ysyx_23060124_OPT_BRCH_BNE: brch_res = (alu_res != 0) ? 1'b1 : 1'b0;
//   `ysyx_23060124_OPT_BRCH_BLT: brch_res =  (alu_res[31] == 1'b1);
//   `ysyx_23060124_OPT_BRCH_BGE: brch_res =  (alu_res[31] == 1'b0);
//   `ysyx_23060124_OPT_BRCH_BLTU: brch_res = (carry == 1'b1) ? 1'b1 : 1'b0;
//   `ysyx_23060124_OPT_BRCH_BGEU: brch_res = (carry == 1'b0) ? 1'b1 : 1'b0;
//   default: brch_res = 1'b0;
//   endcase
// end

assign brch_res = (brch_opt == `ysyx_23060124_OPT_BRCH_BGE) ? ((alu_res == 0) ? 1'b1 : 1'b0) :
                  (brch_opt == `ysyx_23060124_OPT_BRCH_BNE) ? ((alu_res != 0) ? 1'b1 : 1'b0) :
                  (brch_opt == `ysyx_23060124_OPT_BRCH_BLT) ? (alu_res[31] == 1'b1) :
                  (brch_opt == `ysyx_23060124_OPT_BRCH_BGE) ? (alu_res[31] == 1'b0) :
                  (brch_opt == `ysyx_23060124_OPT_BRCH_BLTU) ? ((carry == 1'b1) ? 1'b1 : 1'b0) :
                  (brch_opt == `ysyx_23060124_OPT_BRCH_BGEU) ? ((carry == 1'b0) ? 1'b1 : 1'b0) :
                  1'b0;

assign o_res = (|load_opt) ? lsu_res : (brch_res ? brch_res : alu_res);
assign o_zero = ~(|o_res);

endmodule
