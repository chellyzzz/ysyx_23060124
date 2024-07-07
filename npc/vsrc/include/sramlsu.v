module SRAM_lsu (
    input S_AXI_ACLK,
    input S_AXI_ARESETN,
    input [`ysyx_23060124_ISA_WIDTH - 1:0] raddr,
    input [`ysyx_23060124_ISA_WIDTH - 1:0] waddr,
    input [`ysyx_23060124_ISA_WIDTH - 1:0] wdata,
    input ren,
    input wen,
    input i_pre_valid,
    input [`ysyx_23060124_OPT_WIDTH - 1:0] store_opt,
    output  reg [`ysyx_23060124_ISA_WIDTH - 1:0] rdata,
    output  reg o_post_valid
);

assign clk = S_AXI_ACLK;
assign rst_n = S_AXI_ARESETN;

reg [`ysyx_23060124_ISA_WIDTH - 1 : 0] read_data;
reg [`ysyx_23060124_ISA_WIDTH - 1 : 0] store_addr, store_src2;
reg [`ysyx_23060124_OPT_WIDTH - 1 : 0] store_opt_next;

import "DPI-C" function void npc_pmem_read (input int raddr, output int rdata, input bit ren, input int len);
import "DPI-C" function void npc_pmem_write (input int waddr, input int wdata, input bit wen, input int len);
import "DPI-C" function void store_skip (input int addr);

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        rdata <= read_data;
        o_post_valid <= 1'b0;
        store_opt_next <= 0;
        store_addr <= 0;
        store_src2 <= 0;
    end else begin
        o_post_valid <= i_pre_valid;
        if(ren) begin
            rdata <= read_data;
        end
        else begin
            rdata <= rdata;
        end
        if(wen) begin
            store_addr <= waddr;
            store_src2 <= wdata;
            store_opt_next <= store_opt;
        end
        else begin
            store_addr <= store_addr;
            store_src2 <= store_src2;
            store_opt_next <= store_opt_next;
        end
    end
end

always @(posedge clk) begin
    npc_pmem_read (raddr, read_data, ren, 4);
end

always @(*) begin
    case(store_opt_next)
    `ysyx_23060124_OPT_LSU_SB: begin  npc_pmem_write(store_addr, store_src2, |store_opt_next, 1); end
    `ysyx_23060124_OPT_LSU_SH: begin  npc_pmem_write(store_addr, store_src2, |store_opt_next, 2); end
    `ysyx_23060124_OPT_LSU_SW: begin  npc_pmem_write(store_addr, store_src2, |store_opt_next, 4); end
    endcase
end

endmodule