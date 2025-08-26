`timescale 1ns/1ps

module top;
  reg clock;
  reg reset;

  // -------------------
  // 时钟产生
  // -------------------
  initial begin
    clock = 0;
    forever #5 clock = ~clock; // 100MHz
  end

  // -------------------
  // 复位产生
  // -------------------
  initial begin
    reset = 1;
    #100;
    reset = 0;
  end

  initial begin
  $dumpfile("build/wave.vcd");   // 波形文件名
  $dumpvars(0, top);       // 记录 top 及子层次的所有信号
  end

  integer cycle_count;

  initial begin
      cycle_count = 0;
  end

  always @(posedge clock) begin
      if (!reset) begin
          cycle_count <= cycle_count + 1;
          if (cycle_count > 10000) begin
              $display("ERROR: Simulation timeout after %0d cycles", cycle_count);
              $finish;
          end
      end
  end

  wire                               io_master_awready;
  wire                               io_master_awvalid;
  wire [31:0]                        io_master_awaddr;
  wire [3:0]                         io_master_awid;
  wire [7:0]                         io_master_awlen;
  wire [2:0]                         io_master_awsize;
  wire [1:0]                         io_master_awburst;
  wire                               io_master_wready;
  wire                               io_master_wvalid;
  wire [31:0]                        io_master_wdata;
  wire [3:0]                         io_master_wstrb;
  wire                               io_master_wlast;
  wire                               io_master_bready;
  wire                               io_master_bvalid;
  wire [1:0]                         io_master_bresp;
  wire [3:0]                         io_master_bid;
  wire                               io_master_arready;
  wire                               io_master_arvalid;
  wire [31:0]                        io_master_araddr;
  wire [3:0]                         io_master_arid;
  wire [7:0]                         io_master_arlen;
  wire [2:0]                         io_master_arsize;
  wire [1:0]                         io_master_arburst;
  wire                               io_master_rready;
  wire                               io_master_rvalid;
  wire [1:0]                         io_master_rresp;
  wire [31:0]                        io_master_rdata;
  wire                               io_master_rlast;
  wire [3:0]                         io_master_rid;

  // -------------------
  // AXI Slave 接口 (未用)
  // -------------------
  wire                               io_slave_awready;
  wire                               io_slave_awvalid;
  wire [31:0]                        io_slave_awaddr;
  wire [3:0]                         io_slave_awid;
  wire [7:0]                         io_slave_awlen;
  wire [2:0]                         io_slave_awsize;
  wire [1:0]                         io_slave_awburst;
  wire                               io_slave_wready;
  wire                               io_slave_wvalid;
  wire [31:0]                        io_slave_wdata;
  wire [3:0]                         io_slave_wstrb;
  wire                               io_slave_wlast;
  wire                               io_slave_bready;
  wire                               io_slave_bvalid;
  wire [1:0]                         io_slave_bresp;
  wire [3:0]                         io_slave_bid;
  wire                               io_slave_arready;
  wire                               io_slave_arvalid;
  wire [31:0]                        io_slave_araddr;
  wire [3:0]                         io_slave_arid;
  wire [7:0]                         io_slave_arlen;
  wire [2:0]                         io_slave_arsize;
  wire [1:0]                         io_slave_arburst;
  wire                               io_slave_rready;
  wire                               io_slave_rvalid;
  wire [1:0]                         io_slave_rresp;
  wire [31:0]                        io_slave_rdata;
  wire                               io_slave_rlast;
  wire [3:0]                         io_slave_rid;

  // -------------------
  // DUT 实例化
  // -------------------
  // ysyx_23060124 u_cpu (
  //   .clock(clock),
  //   .reset(reset),
  //   .io_interrupt(io_interrupt),

  //   .io_master_awready(io_master_awready),
  //   .io_master_awvalid(io_master_awvalid),
  //   .io_master_awaddr(io_master_awaddr),
  //   .io_master_awid(io_master_awid),
  //   .io_master_awlen(io_master_awlen),
  //   .io_master_awsize(io_master_awsize),
  //   .io_master_awburst(io_master_awburst),
  //   .io_master_wready(io_master_wready),
  //   .io_master_wvalid(io_master_wvalid),
  //   .io_master_wdata(io_master_wdata),
  //   .io_master_wstrb(io_master_wstrb),
  //   .io_master_wlast(io_master_wlast),
  //   .io_master_bready(io_master_bready),
  //   .io_master_bvalid(io_master_bvalid),
  //   .io_master_bresp(io_master_bresp),
  //   .io_master_bid(io_master_bid),
  //   .io_master_arready(io_master_arready),
  //   .io_master_arvalid(io_master_arvalid),
  //   .io_master_araddr(io_master_araddr),
  //   .io_master_arid(io_master_arid),
  //   .io_master_arlen(io_master_arlen),
  //   .io_master_arsize(io_master_arsize),
  //   .io_master_arburst(io_master_arburst),
  //   .io_master_rready(io_master_rready),
  //   .io_master_rvalid(io_master_rvalid),
  //   .io_master_rresp(io_master_rresp),
  //   .io_master_rdata(io_master_rdata),
  //   .io_master_rlast(io_master_rlast),
  //   .io_master_rid(io_master_rid),

  //   .io_slave_awready(io_slave_awready),
  //   .io_slave_awvalid(io_slave_awvalid),
  //   .io_slave_awaddr(io_slave_awaddr),
  //   .io_slave_awid(io_slave_awid),
  //   .io_slave_awlen(io_slave_awlen),
  //   .io_slave_awsize(io_slave_awsize),
  //   .io_slave_awburst(io_slave_awburst),
  //   .io_slave_wready(io_slave_wready),
  //   .io_slave_wvalid(io_slave_wvalid),
  //   .io_slave_wdata(io_slave_wdata),
  //   .io_slave_wstrb(io_slave_wstrb),
  //   .io_slave_wlast(io_slave_wlast),
  //   .io_slave_bready(io_slave_bready),
  //   .io_slave_bvalid(io_slave_bvalid),
  //   .io_slave_bresp(io_slave_bresp),
  //   .io_slave_bid(io_slave_bid),
  //   .io_slave_arready(io_slave_arready),
  //   .io_slave_arvalid(io_slave_arvalid),
  //   .io_slave_araddr(io_slave_araddr),
  //   .io_slave_arid(io_slave_arid),
  //   .io_slave_arlen(io_slave_arlen),
  //   .io_slave_arsize(io_slave_arsize),
  //   .io_slave_arburst(io_slave_arburst),
  //   .io_slave_rready(io_slave_rready),
  //   .io_slave_rvalid(io_slave_rvalid),
  //   .io_slave_rresp(io_slave_rresp),
  //   .io_slave_rdata(io_slave_rdata),
  //   .io_slave_rlast(io_slave_rlast),
  //   .io_slave_rid(io_slave_rid)
  // );


  // -------------------
  // AXI SRAM 实例化
  // -------------------
ram_simulation #(
    .ADDR_WIDTH(32),
    .DATA_WIDTH(32),
    .LATENCY(2)
) u_sram (
    .clock(clock),
    .reset(reset),

    .sram_AXI_AWADDR (io_master_awaddr),
    .sram_AXI_AWVALID(io_master_awvalid),
    .sram_AXI_AWREADY(io_master_awready),
    .sram_AXI_AWID   (io_master_awid),
    .sram_AXI_AWLEN  (io_master_awlen),
    .sram_AXI_AWSIZE (io_master_awsize),
    .sram_AXI_AWBURST(io_master_awburst),

    .sram_AXI_WDATA  (io_master_wdata),
    .sram_AXI_WSTRB  (io_master_wstrb),
    .sram_AXI_WVALID (io_master_wvalid),
    .sram_AXI_WREADY (io_master_wready),
    .sram_AXI_WLAST  (io_master_wlast),

    .sram_AXI_BRESP  (io_master_bresp),
    .sram_AXI_BVALID (io_master_bvalid),
    .sram_AXI_BREADY (io_master_bready),
    .sram_AXI_BID    (io_master_bid),

    .sram_AXI_ARADDR (io_master_araddr),
    .sram_AXI_ARID   (io_master_arid),
    .sram_AXI_ARVALID(io_master_arvalid),
    .sram_AXI_ARREADY(io_master_arready),
    .sram_AXI_ARLEN  (io_master_arlen),
    .sram_AXI_ARSIZE (io_master_arsize),
    .sram_AXI_ARBURST(io_master_arburst),

    .sram_AXI_RDATA  (io_master_rdata),
    .sram_AXI_RRESP  (io_master_rresp),
    .sram_AXI_RVALID (io_master_rvalid),
    .sram_AXI_RREADY (io_master_rready),
    .sram_AXI_RID    (io_master_rid),
    .sram_AXI_RLAST  (io_master_rlast)
);



endmodule
