`include "para_defines.v"

module ysyx_23060124_ifu (
  input [`ysyx_23060124_ISA_WIDTH-1:0] i_pc_next,
  input clk,
  input ifu_rst,
  input i_pc_update,
  input i_post_ready,
  output [`ysyx_23060124_ISA_WIDTH-1:0] o_ins,
  output [`ysyx_23060124_ISA_WIDTH-1:0] o_pc_next,
  output reg o_post_valid
);

reg [`ysyx_23060124_ISA_WIDTH - 1:0] ins, ins_tmp;
reg next_pc_updated;
// import "DPI-C" function void npc_pmem_read (input int raddr, output int rdata, input bit ren, input int rsize);
// always @(*) begin
//   npc_pmem_read (i_pc, ins, ifu_rst, 4);
// end
reg [`ysyx_23060124_ISA_WIDTH-1:0] pc_next;

ysyx_23060124_Reg #(`ysyx_23060124_ISA_WIDTH, `ysyx_23060124_RESET_PC) next_pc_reg(
  .clk(clk),
  .rst(ifu_rst),
  .din(i_pc_next),
  .dout(pc_next),
  .wen(i_pc_update)
);

SRAM ifu_sram(
    .clk(clk),
    .rst_n(ifu_rst),
    .raddr(pc_next),
    .waddr(0),
    .wdata(0),
    .ren(ifu_rst),
    .wen(0),
    .store_opt(0),
    .rdata(ins),
    .i_pre_valid(0),
    .o_post_valid(void_wire)
);

wire void_wire;

always @(posedge clk or negedge ifu_rst) begin
  if(~ifu_rst) begin
    o_post_valid <= 1'b1;
    next_pc_updated <= 1'b0;
  end
  else begin
    next_pc_updated <= i_pc_update;
    o_post_valid <= next_pc_updated;
  end
end

assign o_ins = i_post_ready && o_post_valid ? ins : o_ins;
assign o_pc_next =  i_post_ready && o_post_valid ? pc_next : o_pc_next;

endmodule
