`include "para_defines.v"

module ysyx_23060124_lsu(
  input                               i_clk   ,
  input                               i_rst_n , 
  input [`ysyx_23060124_ISA_WIDTH - 1:0] lsu_src2,
  input [`ysyx_23060124_ISA_WIDTH - 1:0] alu_res,
  input [`ysyx_23060124_OPT_WIDTH - 1:0] load_opt,
  input [`ysyx_23060124_OPT_WIDTH - 1:0] store_opt,
  input i_pre_valid,
  output reg [`ysyx_23060124_ISA_WIDTH - 1:0] lsu_res,
  output reg o_post_valid
);

reg [`ysyx_23060124_ISA_WIDTH - 1:0] read_res, store_res;


import "DPI-C" function void npc_pmem_read (input int raddr, output int rdata, input bit ren, input int len);
import "DPI-C" function void npc_pmem_write (input int waddr, input int wdata, input bit wen, input int len);
import "DPI-C" function void store_skip (input int addr);
 
reg [`ysyx_23060124_ISA_WIDTH - 1 : 0] store_addr, store_src2;
reg [`ysyx_23060124_OPT_WIDTH - 1 : 0] store_opt_next;

always @(posedge i_clk) begin
// always @(read_res or load_opt) begin
    case(load_opt)
    `ysyx_23060124_OPT_LSU_LB: begin lsu_res = {{24{read_res[7]}}, read_res[7:0]}; end
    `ysyx_23060124_OPT_LSU_LH: begin lsu_res = {{16{read_res[15]}}, read_res[15:0]}; end
    `ysyx_23060124_OPT_LSU_LW: begin lsu_res = read_res; end
    `ysyx_23060124_OPT_LSU_LBU: begin lsu_res = {24'b0, read_res[7:0]}; end
    `ysyx_23060124_OPT_LSU_LHU: begin lsu_res = {{16'b0}, read_res[15:0]}; end
    default: begin lsu_res = `ysyx_23060124_ISA_WIDTH'b0; end
    endcase
end

always @(*) begin
  if(|store_opt) begin 
      store_skip(alu_res);
  end
end

SRAM_lsu LSU_SRAM(
    .S_AXI_ACLK(i_clk),
    .S_AXI_ARESETN(i_rst_n),
    .raddr(alu_res),
    .waddr(alu_res),
    .wdata(lsu_src2),
    .ren(|load_opt & i_pre_valid),
    .wen(|store_opt),
    .store_opt(store_opt),
    .rdata(read_res),
    .i_pre_valid(i_pre_valid),
    .o_post_valid(o_post_valid)
);

// ysyx_23060124_Reg #(`ysyx_23060124_ISA_WIDTH + `ysyx_23060124_ISA_WIDTH + `ysyx_23060124_OPT_WIDTH,  0) lsu_reg(
//   .clk(i_clk),
//   .rst(i_rst_n),
//   .din({alu_res, store_opt, lsu_src2}),
//   .dout({store_addr, store_opt_next, store_src2}),
//   .wen(1)
// );

// always @(*) begin
//   // $display("\nREAD DATA at ADDR = 0x%h", alu_res);
//   npc_pmem_read(alu_res, read_res, |load_opt, 4);
// end

// always @(*) begin
//     case(store_opt_next)
//     `ysyx_23060124_OPT_LSU_SB: begin  npc_pmem_write(store_addr, store_src2, |store_opt_next, 1); end
//     `ysyx_23060124_OPT_LSU_SH: begin  npc_pmem_write(store_addr, store_src2, |store_opt_next, 2); end
//     `ysyx_23060124_OPT_LSU_SW: begin  npc_pmem_write(store_addr, store_src2, |store_opt_next, 4); end
//     endcase
// end

endmodule
