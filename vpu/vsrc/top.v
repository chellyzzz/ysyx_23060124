module RegisterFile(
  input         clock,
  input  [31:0] io_wdata, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input  [3:0]  io_waddr, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input  [3:0]  io_exu_rd, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input  [31:0] io_exu_wdata, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input         io_exu_wen, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input  [3:0]  io_wbu_rd, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input  [31:0] io_wbu_wdata, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input         io_wbu_wen, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input  [3:0]  io_raddr1, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input  [3:0]  io_raddr2, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  output [31:0] io_rdata1, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  output [31:0] io_rdata2, // @[src/main/scala/Registers/RegisterFile.scala 8:14]
  input         io_wen // @[src/main/scala/Registers/RegisterFile.scala 8:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regfile_0; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_1; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_2; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_3; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_4; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_5; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_6; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_7; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_8; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_9; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_10; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_11; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_12; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_13; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_14; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_15; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_16; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_17; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_18; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_19; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_20; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_21; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_22; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_23; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_24; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_25; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_26; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_27; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_28; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_29; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_30; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  reg [31:0] regfile_31; // @[src/main/scala/Registers/RegisterFile.scala 32:20]
  wire [4:0] _GEN_128 = {{1'd0}, io_waddr}; // @[src/main/scala/Registers/RegisterFile.scala 32:20 37:{23,23}]
  wire [31:0] _GEN_65 = 4'h1 == io_raddr1 ? regfile_1 : regfile_0; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_66 = 4'h2 == io_raddr1 ? regfile_2 : _GEN_65; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_67 = 4'h3 == io_raddr1 ? regfile_3 : _GEN_66; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_68 = 4'h4 == io_raddr1 ? regfile_4 : _GEN_67; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_69 = 4'h5 == io_raddr1 ? regfile_5 : _GEN_68; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_70 = 4'h6 == io_raddr1 ? regfile_6 : _GEN_69; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_71 = 4'h7 == io_raddr1 ? regfile_7 : _GEN_70; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_72 = 4'h8 == io_raddr1 ? regfile_8 : _GEN_71; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_73 = 4'h9 == io_raddr1 ? regfile_9 : _GEN_72; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_74 = 4'ha == io_raddr1 ? regfile_10 : _GEN_73; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_75 = 4'hb == io_raddr1 ? regfile_11 : _GEN_74; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_76 = 4'hc == io_raddr1 ? regfile_12 : _GEN_75; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_77 = 4'hd == io_raddr1 ? regfile_13 : _GEN_76; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_78 = 4'he == io_raddr1 ? regfile_14 : _GEN_77; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_79 = 4'hf == io_raddr1 ? regfile_15 : _GEN_78; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [4:0] _GEN_144 = {{1'd0}, io_raddr1}; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_80 = 5'h10 == _GEN_144 ? regfile_16 : _GEN_79; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_81 = 5'h11 == _GEN_144 ? regfile_17 : _GEN_80; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_82 = 5'h12 == _GEN_144 ? regfile_18 : _GEN_81; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_83 = 5'h13 == _GEN_144 ? regfile_19 : _GEN_82; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_84 = 5'h14 == _GEN_144 ? regfile_20 : _GEN_83; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_85 = 5'h15 == _GEN_144 ? regfile_21 : _GEN_84; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_86 = 5'h16 == _GEN_144 ? regfile_22 : _GEN_85; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_87 = 5'h17 == _GEN_144 ? regfile_23 : _GEN_86; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_88 = 5'h18 == _GEN_144 ? regfile_24 : _GEN_87; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_89 = 5'h19 == _GEN_144 ? regfile_25 : _GEN_88; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_90 = 5'h1a == _GEN_144 ? regfile_26 : _GEN_89; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_91 = 5'h1b == _GEN_144 ? regfile_27 : _GEN_90; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_92 = 5'h1c == _GEN_144 ? regfile_28 : _GEN_91; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_93 = 5'h1d == _GEN_144 ? regfile_29 : _GEN_92; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_94 = 5'h1e == _GEN_144 ? regfile_30 : _GEN_93; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _GEN_95 = 5'h1f == _GEN_144 ? regfile_31 : _GEN_94; // @[src/main/scala/Registers/RegisterFile.scala 41:{23,23}]
  wire [31:0] _io_rdata1_T_4 = io_raddr1 == io_wbu_rd & io_wbu_wen ? io_wbu_wdata : _GEN_95; // @[src/main/scala/Registers/RegisterFile.scala 41:23]
  wire [31:0] _GEN_97 = 4'h1 == io_raddr2 ? regfile_1 : regfile_0; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_98 = 4'h2 == io_raddr2 ? regfile_2 : _GEN_97; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_99 = 4'h3 == io_raddr2 ? regfile_3 : _GEN_98; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_100 = 4'h4 == io_raddr2 ? regfile_4 : _GEN_99; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_101 = 4'h5 == io_raddr2 ? regfile_5 : _GEN_100; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_102 = 4'h6 == io_raddr2 ? regfile_6 : _GEN_101; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_103 = 4'h7 == io_raddr2 ? regfile_7 : _GEN_102; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_104 = 4'h8 == io_raddr2 ? regfile_8 : _GEN_103; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_105 = 4'h9 == io_raddr2 ? regfile_9 : _GEN_104; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_106 = 4'ha == io_raddr2 ? regfile_10 : _GEN_105; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_107 = 4'hb == io_raddr2 ? regfile_11 : _GEN_106; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_108 = 4'hc == io_raddr2 ? regfile_12 : _GEN_107; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_109 = 4'hd == io_raddr2 ? regfile_13 : _GEN_108; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_110 = 4'he == io_raddr2 ? regfile_14 : _GEN_109; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_111 = 4'hf == io_raddr2 ? regfile_15 : _GEN_110; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [4:0] _GEN_160 = {{1'd0}, io_raddr2}; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_112 = 5'h10 == _GEN_160 ? regfile_16 : _GEN_111; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_113 = 5'h11 == _GEN_160 ? regfile_17 : _GEN_112; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_114 = 5'h12 == _GEN_160 ? regfile_18 : _GEN_113; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_115 = 5'h13 == _GEN_160 ? regfile_19 : _GEN_114; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_116 = 5'h14 == _GEN_160 ? regfile_20 : _GEN_115; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_117 = 5'h15 == _GEN_160 ? regfile_21 : _GEN_116; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_118 = 5'h16 == _GEN_160 ? regfile_22 : _GEN_117; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_119 = 5'h17 == _GEN_160 ? regfile_23 : _GEN_118; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_120 = 5'h18 == _GEN_160 ? regfile_24 : _GEN_119; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_121 = 5'h19 == _GEN_160 ? regfile_25 : _GEN_120; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_122 = 5'h1a == _GEN_160 ? regfile_26 : _GEN_121; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_123 = 5'h1b == _GEN_160 ? regfile_27 : _GEN_122; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_124 = 5'h1c == _GEN_160 ? regfile_28 : _GEN_123; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_125 = 5'h1d == _GEN_160 ? regfile_29 : _GEN_124; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_126 = 5'h1e == _GEN_160 ? regfile_30 : _GEN_125; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _GEN_127 = 5'h1f == _GEN_160 ? regfile_31 : _GEN_126; // @[src/main/scala/Registers/RegisterFile.scala 45:{23,23}]
  wire [31:0] _io_rdata2_T_4 = io_raddr2 == io_wbu_rd & io_wbu_wen ? io_wbu_wdata : _GEN_127; // @[src/main/scala/Registers/RegisterFile.scala 45:23]
  assign io_rdata1 = io_raddr1 == io_exu_rd & io_exu_wen ? io_exu_wdata : _io_rdata1_T_4; // @[src/main/scala/Registers/RegisterFile.scala 40:19]
  assign io_rdata2 = io_raddr2 == io_exu_rd & io_exu_wen ? io_exu_wdata : _io_rdata2_T_4; // @[src/main/scala/Registers/RegisterFile.scala 44:19]
  always @(posedge clock) begin
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h0 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_0 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end else begin
        regfile_0 <= 32'h0; // @[src/main/scala/Registers/RegisterFile.scala 34:14]
      end
    end else begin
      regfile_0 <= 32'h0; // @[src/main/scala/Registers/RegisterFile.scala 34:14]
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h1 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_1 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h2 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_2 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h3 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_3 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h4 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_4 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h5 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_5 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h6 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_6 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h7 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_7 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h8 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_8 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'h9 == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_9 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'ha == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_10 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'hb == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_11 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'hc == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_12 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'hd == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_13 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'he == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_14 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (4'hf == io_waddr) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_15 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h10 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_16 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h11 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_17 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h12 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_18 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h13 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_19 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h14 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_20 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h15 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_21 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h16 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_22 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h17 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_23 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h18 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_24 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h19 == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_25 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h1a == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_26 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h1b == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_27 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h1c == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_28 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h1d == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_29 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h1e == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_30 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
    if (io_wen & io_waddr != 4'h0) begin // @[src/main/scala/Registers/RegisterFile.scala 36:37]
      if (5'h1f == _GEN_128) begin // @[src/main/scala/Registers/RegisterFile.scala 37:23]
        regfile_31 <= io_wdata; // @[src/main/scala/Registers/RegisterFile.scala 37:23]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regfile_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regfile_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regfile_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regfile_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regfile_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regfile_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regfile_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regfile_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regfile_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regfile_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regfile_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regfile_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regfile_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  regfile_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  regfile_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  regfile_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regfile_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  regfile_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  regfile_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  regfile_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  regfile_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  regfile_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  regfile_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  regfile_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  regfile_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  regfile_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regfile_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  regfile_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  regfile_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  regfile_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  regfile_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  regfile_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CSR(
  input         clock,
  input         reset,
  input         io_i_csr_wen, // @[src/main/scala/Registers/csr.scala 8:14]
  input         io_i_ecall, // @[src/main/scala/Registers/csr.scala 8:14]
  input         io_i_mret, // @[src/main/scala/Registers/csr.scala 8:14]
  input  [31:0] io_i_pc, // @[src/main/scala/Registers/csr.scala 8:14]
  input  [11:0] io_i_csr_raddr, // @[src/main/scala/Registers/csr.scala 8:14]
  output [31:0] io_o_csr_rdata, // @[src/main/scala/Registers/csr.scala 8:14]
  input  [11:0] io_i_csr_waddr, // @[src/main/scala/Registers/csr.scala 8:14]
  input  [31:0] io_i_csr_wdata, // @[src/main/scala/Registers/csr.scala 8:14]
  output [31:0] io_o_mepc, // @[src/main/scala/Registers/csr.scala 8:14]
  output [31:0] io_o_mtvec // @[src/main/scala/Registers/csr.scala 8:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [12:0] mstatus; // @[src/main/scala/Registers/csr.scala 28:24]
  reg [31:0] mepc; // @[src/main/scala/Registers/csr.scala 29:21]
  reg [31:0] mtvec; // @[src/main/scala/Registers/csr.scala 30:22]
  wire [12:0] _mstatus_T_4 = {mstatus[12:11],2'h3,mstatus[9:8],mstatus[6:4],1'h0,mstatus[2:0]}; // @[src/main/scala/Registers/csr.scala 34:19]
  wire [13:0] _mstatus_T_9 = {mstatus[12:11],2'h0,mstatus[9:8],1'h1,mstatus[6:4],1'h0,mstatus[2:0]}; // @[src/main/scala/Registers/csr.scala 36:19]
  wire [31:0] _GEN_0 = 12'h305 == io_i_csr_waddr ? io_i_csr_wdata : mtvec; // @[src/main/scala/Registers/csr.scala 30:22 39:28 41:33]
  wire [31:0] _GEN_1 = 12'h341 == io_i_csr_waddr ? io_i_csr_wdata : mepc; // @[src/main/scala/Registers/csr.scala 29:21 39:28 40:32]
  wire [31:0] _GEN_2 = 12'h341 == io_i_csr_waddr ? mtvec : _GEN_0; // @[src/main/scala/Registers/csr.scala 30:22 39:28]
  wire [13:0] _GEN_5 = io_i_mret ? _mstatus_T_9 : {{1'd0}, mstatus}; // @[src/main/scala/Registers/csr.scala 35:26 36:13 28:24]
  wire [13:0] _GEN_9 = io_i_ecall ? {{1'd0}, _mstatus_T_4} : _GEN_5; // @[src/main/scala/Registers/csr.scala 32:20 34:13]
  wire  _io_o_csr_rdata_T = io_i_csr_raddr == 12'hf11; // @[src/main/scala/Registers/csr.scala 47:21]
  wire  _io_o_csr_rdata_T_1 = io_i_csr_raddr == 12'hf12; // @[src/main/scala/Registers/csr.scala 48:21]
  wire  _io_o_csr_rdata_T_2 = io_i_csr_raddr == 12'h300; // @[src/main/scala/Registers/csr.scala 49:21]
  wire [31:0] _io_o_csr_rdata_T_3 = {19'h13,mstatus}; // @[src/main/scala/Registers/csr.scala 49:46]
  wire  _io_o_csr_rdata_T_4 = io_i_csr_raddr == 12'h341; // @[src/main/scala/Registers/csr.scala 50:21]
  wire  _io_o_csr_rdata_T_5 = io_i_csr_raddr == 12'h342; // @[src/main/scala/Registers/csr.scala 51:21]
  wire  _io_o_csr_rdata_T_6 = io_i_csr_raddr == 12'h305; // @[src/main/scala/Registers/csr.scala 52:21]
  wire [31:0] _io_o_csr_rdata_T_7 = _io_o_csr_rdata_T_6 ? mtvec : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] _io_o_csr_rdata_T_8 = _io_o_csr_rdata_T_5 ? 32'hb : _io_o_csr_rdata_T_7; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] _io_o_csr_rdata_T_9 = _io_o_csr_rdata_T_4 ? mepc : _io_o_csr_rdata_T_8; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] _io_o_csr_rdata_T_10 = _io_o_csr_rdata_T_2 ? _io_o_csr_rdata_T_3 : _io_o_csr_rdata_T_9; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] _io_o_csr_rdata_T_11 = _io_o_csr_rdata_T_1 ? 32'h23060124 : _io_o_csr_rdata_T_10; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [13:0] _GEN_11 = reset ? 14'h0 : _GEN_9; // @[src/main/scala/Registers/csr.scala 28:{24,24}]
  assign io_o_csr_rdata = _io_o_csr_rdata_T ? 32'h79737978 : _io_o_csr_rdata_T_11; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_o_mepc = io_i_mret ? mepc : 32'h0; // @[src/main/scala/Registers/csr.scala 55:19]
  assign io_o_mtvec = io_i_ecall ? mtvec : 32'h0; // @[src/main/scala/Registers/csr.scala 56:20]
  always @(posedge clock) begin
    mstatus <= _GEN_11[12:0]; // @[src/main/scala/Registers/csr.scala 28:{24,24}]
    if (reset) begin // @[src/main/scala/Registers/csr.scala 29:21]
      mepc <= 32'h0; // @[src/main/scala/Registers/csr.scala 29:21]
    end else if (io_i_ecall) begin // @[src/main/scala/Registers/csr.scala 32:20]
      mepc <= io_i_pc; // @[src/main/scala/Registers/csr.scala 33:10]
    end else if (!(io_i_mret)) begin // @[src/main/scala/Registers/csr.scala 35:26]
      if (io_i_csr_wen) begin // @[src/main/scala/Registers/csr.scala 38:29]
        mepc <= _GEN_1;
      end
    end
    if (reset) begin // @[src/main/scala/Registers/csr.scala 30:22]
      mtvec <= 32'h0; // @[src/main/scala/Registers/csr.scala 30:22]
    end else if (!(io_i_ecall)) begin // @[src/main/scala/Registers/csr.scala 32:20]
      if (!(io_i_mret)) begin // @[src/main/scala/Registers/csr.scala 35:26]
        if (io_i_csr_wen) begin // @[src/main/scala/Registers/csr.scala 38:29]
          mtvec <= _GEN_2;
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mstatus = _RAND_0[12:0];
  _RAND_1 = {1{`RANDOM}};
  mepc = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  mtvec = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Xbar(
  input         clock,
  input         reset,
  output [31:0] io_ifu_AXI_RDATA, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_ifu_AXI_RVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_ifu_AXI_RREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  output [3:0]  io_ifu_AXI_RID, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_ifu_AXI_RLAST, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [31:0] io_ifu_AXI_ARADDR, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_ifu_AXI_ARVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_ifu_AXI_ARREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [31:0] io_lsu_AXI_AWADDR, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_lsu_AXI_AWVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_lsu_AXI_AWREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [2:0]  io_lsu_AXI_AWSIZE, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_lsu_AXI_WVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_lsu_AXI_WREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [31:0] io_lsu_AXI_WDATA, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [3:0]  io_lsu_AXI_WSTRB, // @[src/main/scala/include/Xbar.scala 8:14]
  output [31:0] io_lsu_AXI_RDATA, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_lsu_AXI_RVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_lsu_AXI_RREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  output [3:0]  io_lsu_AXI_RID, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [31:0] io_lsu_AXI_ARADDR, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_lsu_AXI_ARVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_lsu_AXI_ARREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [2:0]  io_lsu_AXI_ARSIZE, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_lsu_AXI_BVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_lsu_AXI_BREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  output [31:0] io_sram_AXI_AWADDR, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_sram_AXI_AWVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_sram_AXI_AWREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  output [2:0]  io_sram_AXI_AWSIZE, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_sram_AXI_WVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_sram_AXI_WREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  output [31:0] io_sram_AXI_WDATA, // @[src/main/scala/include/Xbar.scala 8:14]
  output [3:0]  io_sram_AXI_WSTRB, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_sram_AXI_WLAST, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [31:0] io_sram_AXI_RDATA, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_sram_AXI_RVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_sram_AXI_RREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  input  [3:0]  io_sram_AXI_RID, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_sram_AXI_RLAST, // @[src/main/scala/include/Xbar.scala 8:14]
  output [31:0] io_sram_AXI_ARADDR, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_sram_AXI_ARVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_sram_AXI_ARREADY, // @[src/main/scala/include/Xbar.scala 8:14]
  output [3:0]  io_sram_AXI_ARID, // @[src/main/scala/include/Xbar.scala 8:14]
  output [7:0]  io_sram_AXI_ARLEN, // @[src/main/scala/include/Xbar.scala 8:14]
  output [2:0]  io_sram_AXI_ARSIZE, // @[src/main/scala/include/Xbar.scala 8:14]
  output [1:0]  io_sram_AXI_ARBURST, // @[src/main/scala/include/Xbar.scala 8:14]
  input         io_sram_AXI_BVALID, // @[src/main/scala/include/Xbar.scala 8:14]
  output        io_sram_AXI_BREADY // @[src/main/scala/include/Xbar.scala 8:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  lsu_req = io_lsu_AXI_AWVALID | io_lsu_AXI_ARVALID; // @[src/main/scala/include/Xbar.scala 21:38]
  wire  lsu_ram_finish = io_sram_AXI_BREADY | io_lsu_AXI_RREADY; // @[src/main/scala/include/Xbar.scala 23:44]
  reg [1:0] state; // @[src/main/scala/include/Xbar.scala 26:24]
  wire [1:0] _GEN_3 = lsu_ram_finish ? 2'h0 : state; // @[src/main/scala/include/Xbar.scala 42:30 43:15 26:24]
  wire  _io_ifu_AXI_ARREADY_T = state == 2'h1; // @[src/main/scala/include/Xbar.scala 48:37]
  wire  _io_lsu_AXI_AWREADY_T = state == 2'h2; // @[src/main/scala/include/Xbar.scala 61:37]
  wire [3:0] _io_sram_AXI_ARID_T_2 = _io_ifu_AXI_ARREADY_T ? io_ifu_AXI_RID : 4'h0; // @[src/main/scala/include/Xbar.scala 83:69]
  wire [7:0] _io_sram_AXI_ARLEN_T_2 = _io_ifu_AXI_ARREADY_T ? 8'h2 : 8'h0; // @[src/main/scala/include/Xbar.scala 86:70]
  wire [2:0] _io_sram_AXI_ARSIZE_T_2 = _io_ifu_AXI_ARREADY_T ? 3'h2 : 3'h0; // @[src/main/scala/include/Xbar.scala 87:72]
  wire [1:0] _io_sram_AXI_ARBURST_T_2 = _io_ifu_AXI_ARREADY_T ? 2'h1 : 2'h0; // @[src/main/scala/include/Xbar.scala 88:74]
  assign io_ifu_AXI_RDATA = io_sram_AXI_RDATA; // @[src/main/scala/include/Xbar.scala 51:22]
  assign io_ifu_AXI_RVALID = _io_ifu_AXI_ARREADY_T & io_sram_AXI_RVALID; // @[src/main/scala/include/Xbar.scala 49:29]
  assign io_ifu_AXI_RID = _io_ifu_AXI_ARREADY_T ? io_sram_AXI_RID : 4'h0; // @[src/main/scala/include/Xbar.scala 54:26]
  assign io_ifu_AXI_RLAST = _io_ifu_AXI_ARREADY_T & io_sram_AXI_RLAST; // @[src/main/scala/include/Xbar.scala 53:28]
  assign io_ifu_AXI_ARREADY = state == 2'h1 & io_sram_AXI_ARREADY; // @[src/main/scala/include/Xbar.scala 48:30]
  assign io_lsu_AXI_AWREADY = state == 2'h2 & io_sram_AXI_AWREADY; // @[src/main/scala/include/Xbar.scala 61:30]
  assign io_lsu_AXI_WREADY = _io_lsu_AXI_AWREADY_T & io_sram_AXI_WREADY; // @[src/main/scala/include/Xbar.scala 62:29]
  assign io_lsu_AXI_RDATA = _io_lsu_AXI_AWREADY_T ? io_sram_AXI_RDATA : 32'h0; // @[src/main/scala/include/Xbar.scala 68:28]
  assign io_lsu_AXI_RVALID = _io_lsu_AXI_AWREADY_T & io_sram_AXI_RVALID; // @[src/main/scala/include/Xbar.scala 67:29]
  assign io_lsu_AXI_RID = _io_lsu_AXI_AWREADY_T ? io_sram_AXI_RID : 4'h0; // @[src/main/scala/include/Xbar.scala 71:26]
  assign io_lsu_AXI_ARREADY = _io_lsu_AXI_AWREADY_T & io_sram_AXI_ARREADY; // @[src/main/scala/include/Xbar.scala 66:30]
  assign io_lsu_AXI_BVALID = _io_lsu_AXI_AWREADY_T & io_sram_AXI_BVALID; // @[src/main/scala/include/Xbar.scala 63:29]
  assign io_sram_AXI_AWADDR = io_lsu_AXI_AWADDR; // @[src/main/scala/include/Xbar.scala 73:24]
  assign io_sram_AXI_AWVALID = _io_lsu_AXI_AWREADY_T & io_lsu_AXI_AWVALID; // @[src/main/scala/include/Xbar.scala 74:31]
  assign io_sram_AXI_AWSIZE = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_AWSIZE : 3'h0; // @[src/main/scala/include/Xbar.scala 91:30]
  assign io_sram_AXI_WVALID = _io_lsu_AXI_AWREADY_T & io_lsu_AXI_WVALID; // @[src/main/scala/include/Xbar.scala 77:30]
  assign io_sram_AXI_WDATA = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_WDATA : 32'h0; // @[src/main/scala/include/Xbar.scala 76:29]
  assign io_sram_AXI_WSTRB = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_WSTRB : 4'h0; // @[src/main/scala/include/Xbar.scala 78:29]
  assign io_sram_AXI_WLAST = state == 2'h2; // @[src/main/scala/include/Xbar.scala 79:36]
  assign io_sram_AXI_RREADY = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_RREADY : _io_ifu_AXI_ARREADY_T & io_ifu_AXI_RREADY; // @[src/main/scala/include/Xbar.scala 85:30]
  assign io_sram_AXI_ARADDR = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_ARADDR : io_ifu_AXI_ARADDR; // @[src/main/scala/include/Xbar.scala 82:30]
  assign io_sram_AXI_ARVALID = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_ARVALID : _io_ifu_AXI_ARREADY_T & io_ifu_AXI_ARVALID; // @[src/main/scala/include/Xbar.scala 84:31]
  assign io_sram_AXI_ARID = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_RID : _io_sram_AXI_ARID_T_2; // @[src/main/scala/include/Xbar.scala 83:30]
  assign io_sram_AXI_ARLEN = _io_lsu_AXI_AWREADY_T ? 8'h0 : _io_sram_AXI_ARLEN_T_2; // @[src/main/scala/include/Xbar.scala 86:29]
  assign io_sram_AXI_ARSIZE = _io_lsu_AXI_AWREADY_T ? io_lsu_AXI_ARSIZE : _io_sram_AXI_ARSIZE_T_2; // @[src/main/scala/include/Xbar.scala 87:30]
  assign io_sram_AXI_ARBURST = _io_lsu_AXI_AWREADY_T ? 2'h0 : _io_sram_AXI_ARBURST_T_2; // @[src/main/scala/include/Xbar.scala 88:31]
  assign io_sram_AXI_BREADY = _io_lsu_AXI_AWREADY_T & io_lsu_AXI_BREADY; // @[src/main/scala/include/Xbar.scala 80:30]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/include/Xbar.scala 26:24]
      state <= 2'h0; // @[src/main/scala/include/Xbar.scala 26:24]
    end else if (2'h0 == state) begin // @[src/main/scala/include/Xbar.scala 28:19]
      if (io_ifu_AXI_ARVALID) begin // @[src/main/scala/include/Xbar.scala 30:23]
        state <= 2'h1; // @[src/main/scala/include/Xbar.scala 31:15]
      end else if (lsu_req) begin // @[src/main/scala/include/Xbar.scala 32:29]
        state <= 2'h2; // @[src/main/scala/include/Xbar.scala 33:15]
      end
    end else if (2'h1 == state) begin // @[src/main/scala/include/Xbar.scala 28:19]
      if (io_sram_AXI_RLAST) begin // @[src/main/scala/include/Xbar.scala 37:30]
        state <= 2'h0; // @[src/main/scala/include/Xbar.scala 38:15]
      end
    end else if (2'h2 == state) begin // @[src/main/scala/include/Xbar.scala 28:19]
      state <= _GEN_3;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module IFU(
  input         clock,
  input         reset,
  input  [31:0] io_i_pc_next, // @[src/main/scala/ifu/ifu.scala 8:14]
  input         io_flush, // @[src/main/scala/ifu/ifu.scala 8:14]
  input         io_i_post_ready, // @[src/main/scala/ifu/ifu.scala 8:14]
  output [31:0] io_o_ins, // @[src/main/scala/ifu/ifu.scala 8:14]
  output [31:0] io_o_pc, // @[src/main/scala/ifu/ifu.scala 8:14]
  output        io_hit, // @[src/main/scala/ifu/ifu.scala 8:14]
  input  [31:0] io_ifu_AXI_RDATA, // @[src/main/scala/ifu/ifu.scala 8:14]
  input         io_ifu_AXI_RVALID, // @[src/main/scala/ifu/ifu.scala 8:14]
  output        io_ifu_AXI_RREADY, // @[src/main/scala/ifu/ifu.scala 8:14]
  input         io_ifu_AXI_RLAST, // @[src/main/scala/ifu/ifu.scala 8:14]
  output [31:0] io_ifu_AXI_ARADDR, // @[src/main/scala/ifu/ifu.scala 8:14]
  output        io_ifu_AXI_ARVALID, // @[src/main/scala/ifu/ifu.scala 8:14]
  input         io_ifu_AXI_ARREADY // @[src/main/scala/ifu/ifu.scala 8:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc_next; // @[src/main/scala/ifu/ifu.scala 23:24]
  reg  busy; // @[src/main/scala/ifu/ifu.scala 24:21]
  reg  hit; // @[src/main/scala/ifu/ifu.scala 25:20]
  reg [31:0] ins; // @[src/main/scala/ifu/ifu.scala 26:20]
  reg [31:0] pc; // @[src/main/scala/ifu/ifu.scala 27:19]
  wire [31:0] _pc_next_T_1 = pc_next + 32'h4; // @[src/main/scala/ifu/ifu.scala 38:24]
  reg  axi_arvalid; // @[src/main/scala/ifu/ifu.scala 44:28]
  reg  axi_rready; // @[src/main/scala/ifu/ifu.scala 45:28]
  wire  _GEN_2 = hit & io_i_post_ready ? 1'h0 : hit; // @[src/main/scala/ifu/ifu.scala 25:20 73:38 74:9]
  wire  _GEN_3 = axi_rready | _GEN_2; // @[src/main/scala/ifu/ifu.scala 71:26 72:9]
  wire  _T_2 = ~hit; // @[src/main/scala/ifu/ifu.scala 79:15]
  wire  _T_6 = ~hit & ~axi_arvalid & ~busy; // @[src/main/scala/ifu/ifu.scala 79:36]
  wire  _GEN_5 = io_ifu_AXI_RLAST & io_ifu_AXI_RREADY & _T_2 | axi_arvalid; // @[src/main/scala/ifu/ifu.scala 83:61 84:17 44:28]
  wire  _GEN_6 = axi_arvalid & io_ifu_AXI_ARREADY ? 1'h0 : _GEN_5; // @[src/main/scala/ifu/ifu.scala 81:49 82:17]
  wire  _GEN_7 = ~hit & ~axi_arvalid & ~busy | _GEN_6; // @[src/main/scala/ifu/ifu.scala 79:46 80:17]
  wire  _GEN_9 = axi_rready ? 1'h0 : axi_rready; // @[src/main/scala/ifu/ifu.scala 90:26 91:16 45:28]
  wire  _GEN_10 = io_ifu_AXI_RVALID & ~axi_rready | _GEN_9; // @[src/main/scala/ifu/ifu.scala 88:49 89:16]
  wire  _GEN_12 = io_ifu_AXI_RVALID & io_ifu_AXI_RREADY ? 1'h0 : busy; // @[src/main/scala/ifu/ifu.scala 101:55 102:10 24:21]
  wire  _GEN_15 = _T_6 | _GEN_12; // @[src/main/scala/ifu/ifu.scala 100:10 99:46]
  assign io_o_ins = ins; // @[src/main/scala/ifu/ifu.scala 32:12]
  assign io_o_pc = pc; // @[src/main/scala/ifu/ifu.scala 31:11]
  assign io_hit = hit; // @[src/main/scala/ifu/ifu.scala 29:10]
  assign io_ifu_AXI_RREADY = axi_rready; // @[src/main/scala/ifu/ifu.scala 54:21]
  assign io_ifu_AXI_ARADDR = pc_next; // @[src/main/scala/ifu/ifu.scala 48:21]
  assign io_ifu_AXI_ARVALID = axi_arvalid; // @[src/main/scala/ifu/ifu.scala 49:22]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/ifu/ifu.scala 23:24]
      pc_next <= 32'h80000000; // @[src/main/scala/ifu/ifu.scala 23:24]
    end else if (io_flush) begin // @[src/main/scala/ifu/ifu.scala 35:18]
      pc_next <= io_i_pc_next; // @[src/main/scala/ifu/ifu.scala 36:13]
    end else if (io_hit & io_i_post_ready) begin // @[src/main/scala/ifu/ifu.scala 37:41]
      pc_next <= _pc_next_T_1; // @[src/main/scala/ifu/ifu.scala 38:13]
    end
    if (reset) begin // @[src/main/scala/ifu/ifu.scala 24:21]
      busy <= 1'h0; // @[src/main/scala/ifu/ifu.scala 24:21]
    end else if (io_flush) begin // @[src/main/scala/ifu/ifu.scala 95:17]
      busy <= 1'h0; // @[src/main/scala/ifu/ifu.scala 96:10]
    end else begin
      busy <= _GEN_15;
    end
    if (reset) begin // @[src/main/scala/ifu/ifu.scala 25:20]
      hit <= 1'h0; // @[src/main/scala/ifu/ifu.scala 25:20]
    end else if (io_flush) begin // @[src/main/scala/ifu/ifu.scala 69:17]
      hit <= 1'h0; // @[src/main/scala/ifu/ifu.scala 70:9]
    end else begin
      hit <= _GEN_3;
    end
    if (reset) begin // @[src/main/scala/ifu/ifu.scala 26:20]
      ins <= 32'h0; // @[src/main/scala/ifu/ifu.scala 26:20]
    end else if (io_flush) begin // @[src/main/scala/ifu/ifu.scala 95:17]
      ins <= 32'h0; // @[src/main/scala/ifu/ifu.scala 97:9]
    end else if (!(_T_6)) begin // @[src/main/scala/ifu/ifu.scala 99:46]
      if (io_ifu_AXI_RVALID & io_ifu_AXI_RREADY) begin // @[src/main/scala/ifu/ifu.scala 101:55]
        ins <= io_ifu_AXI_RDATA; // @[src/main/scala/ifu/ifu.scala 103:9]
      end
    end
    if (reset) begin // @[src/main/scala/ifu/ifu.scala 27:19]
      pc <= 32'h0; // @[src/main/scala/ifu/ifu.scala 27:19]
    end else if (io_flush) begin // @[src/main/scala/ifu/ifu.scala 95:17]
      pc <= 32'h0; // @[src/main/scala/ifu/ifu.scala 98:9]
    end else if (!(_T_6)) begin // @[src/main/scala/ifu/ifu.scala 99:46]
      if (io_ifu_AXI_RVALID & io_ifu_AXI_RREADY) begin // @[src/main/scala/ifu/ifu.scala 101:55]
        pc <= pc_next; // @[src/main/scala/ifu/ifu.scala 104:9]
      end
    end
    if (reset) begin // @[src/main/scala/ifu/ifu.scala 44:28]
      axi_arvalid <= 1'h0; // @[src/main/scala/ifu/ifu.scala 44:28]
    end else if (io_flush) begin // @[src/main/scala/ifu/ifu.scala 77:17]
      axi_arvalid <= 1'h0; // @[src/main/scala/ifu/ifu.scala 78:17]
    end else begin
      axi_arvalid <= _GEN_7;
    end
    if (reset) begin // @[src/main/scala/ifu/ifu.scala 45:28]
      axi_rready <= 1'h0; // @[src/main/scala/ifu/ifu.scala 45:28]
    end else if (io_flush) begin // @[src/main/scala/ifu/ifu.scala 86:17]
      axi_rready <= 1'h0; // @[src/main/scala/ifu/ifu.scala 87:16]
    end else begin
      axi_rready <= _GEN_10;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc_next = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  busy = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  hit = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  ins = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  pc = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  axi_arvalid = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  axi_rready = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module IFU2IDURegs(
  input         clock,
  input         reset,
  input  [31:0] io_i_pc, // @[src/main/scala/ifu/ifu_idu_regs.scala 8:14]
  input  [31:0] io_i_ins, // @[src/main/scala/ifu/ifu_idu_regs.scala 8:14]
  output [31:0] io_o_pc, // @[src/main/scala/ifu/ifu_idu_regs.scala 8:14]
  output [31:0] io_o_ins, // @[src/main/scala/ifu/ifu_idu_regs.scala 8:14]
  input         io_i_hit, // @[src/main/scala/ifu/ifu_idu_regs.scala 8:14]
  input         io_i_post_ready, // @[src/main/scala/ifu/ifu_idu_regs.scala 8:14]
  output        io_o_post_valid // @[src/main/scala/ifu/ifu_idu_regs.scala 8:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc; // @[src/main/scala/ifu/ifu_idu_regs.scala 23:20]
  reg [31:0] ins; // @[src/main/scala/ifu/ifu_idu_regs.scala 24:20]
  assign io_o_pc = pc; // @[src/main/scala/ifu/ifu_idu_regs.scala 36:12]
  assign io_o_ins = ins; // @[src/main/scala/ifu/ifu_idu_regs.scala 37:12]
  assign io_o_post_valid = io_i_post_ready & io_i_hit; // @[src/main/scala/ifu/ifu_idu_regs.scala 20:38]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/ifu/ifu_idu_regs.scala 23:20]
      pc <= 32'h0; // @[src/main/scala/ifu/ifu_idu_regs.scala 23:20]
    end else if (io_i_hit & io_i_post_ready) begin // @[src/main/scala/ifu/ifu_idu_regs.scala 27:38]
      pc <= io_i_pc; // @[src/main/scala/ifu/ifu_idu_regs.scala 28:8]
    end else if (~io_i_hit & io_i_post_ready) begin // @[src/main/scala/ifu/ifu_idu_regs.scala 30:46]
      pc <= 32'h0; // @[src/main/scala/ifu/ifu_idu_regs.scala 31:8]
    end
    if (reset) begin // @[src/main/scala/ifu/ifu_idu_regs.scala 24:20]
      ins <= 32'h0; // @[src/main/scala/ifu/ifu_idu_regs.scala 24:20]
    end else if (io_i_hit & io_i_post_ready) begin // @[src/main/scala/ifu/ifu_idu_regs.scala 27:38]
      ins <= io_i_ins; // @[src/main/scala/ifu/ifu_idu_regs.scala 29:9]
    end else if (~io_i_hit & io_i_post_ready) begin // @[src/main/scala/ifu/ifu_idu_regs.scala 30:46]
      ins <= 32'h0; // @[src/main/scala/ifu/ifu_idu_regs.scala 32:9]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  ins = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module IDU(
  input  [31:0] io_ins, // @[src/main/scala/idu/idu.scala 8:14]
  output [31:0] io_o_imm, // @[src/main/scala/idu/idu.scala 8:14]
  output [4:0]  io_o_rd, // @[src/main/scala/idu/idu.scala 8:14]
  output [4:0]  io_o_rs1, // @[src/main/scala/idu/idu.scala 8:14]
  output [4:0]  io_o_rs2, // @[src/main/scala/idu/idu.scala 8:14]
  output [11:0] io_o_csr_addr, // @[src/main/scala/idu/idu.scala 8:14]
  output [2:0]  io_o_exu_opt, // @[src/main/scala/idu/idu.scala 8:14]
  output [9:0]  io_o_alu_opt, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_wen, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_csr_wen, // @[src/main/scala/idu/idu.scala 8:14]
  output [1:0]  io_o_src_sel1, // @[src/main/scala/idu/idu.scala 8:14]
  output [2:0]  io_o_src_sel2, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_mret, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_ecall, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_load, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_store, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_brch, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_jal, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_jalr, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_ebreak, // @[src/main/scala/idu/idu.scala 8:14]
  output        io_o_fence_i // @[src/main/scala/idu/idu.scala 8:14]
);
  wire [2:0] func3 = io_ins[14:12]; // @[src/main/scala/idu/idu.scala 96:24]
  wire [6:0] opcode = io_ins[6:0]; // @[src/main/scala/idu/idu.scala 97:24]
  wire [6:0] func7 = io_ins[31:25]; // @[src/main/scala/idu/idu.scala 98:24]
  wire [4:0] rs1 = io_ins[19:15]; // @[src/main/scala/idu/idu.scala 99:24]
  wire [4:0] rs2 = io_ins[24:20]; // @[src/main/scala/idu/idu.scala 100:24]
  wire [4:0] rd = io_ins[11:7]; // @[src/main/scala/idu/idu.scala 101:24]
  wire  TYPEI = opcode == 7'h13; // @[src/main/scala/idu/idu.scala 104:28]
  wire  TYPEI_LOAD = opcode == 7'h3; // @[src/main/scala/idu/idu.scala 105:28]
  wire  TYPER = opcode == 7'h33; // @[src/main/scala/idu/idu.scala 106:28]
  wire  TYPELUI = opcode == 7'h37; // @[src/main/scala/idu/idu.scala 107:28]
  wire  TYPEAUIPC = opcode == 7'h17; // @[src/main/scala/idu/idu.scala 108:28]
  wire  TYPEJAL = opcode == 7'h6f; // @[src/main/scala/idu/idu.scala 109:28]
  wire  TYPEJALR = opcode == 7'h67; // @[src/main/scala/idu/idu.scala 110:28]
  wire  TYPES = opcode == 7'h23; // @[src/main/scala/idu/idu.scala 111:28]
  wire  TYPEB = opcode == 7'h63; // @[src/main/scala/idu/idu.scala 112:28]
  wire  TYPEEBRK = opcode == 7'h73; // @[src/main/scala/idu/idu.scala 113:28]
  wire  TYPEFENCE = opcode == 7'hf; // @[src/main/scala/idu/idu.scala 114:28]
  wire  CSRRS = TYPEEBRK & func3 == 3'h2; // @[src/main/scala/idu/idu.scala 122:25]
  wire  _CSRRW_T = func3 == 3'h1; // @[src/main/scala/idu/idu.scala 123:34]
  wire  CSRRW = TYPEEBRK & func3 == 3'h1; // @[src/main/scala/idu/idu.scala 123:25]
  wire [19:0] _io_o_imm_T_2 = io_ins[31] ? 20'hfffff : 20'h0; // @[src/main/scala/idu/idu.scala 126:48]
  wire [31:0] _io_o_imm_T_4 = {_io_o_imm_T_2,io_ins[31:20]}; // @[src/main/scala/idu/idu.scala 126:43]
  wire [31:0] _io_o_imm_T_7 = {io_ins[31:12],12'h0}; // @[src/main/scala/idu/idu.scala 127:45]
  wire [11:0] _io_o_imm_T_9 = io_ins[31] ? 12'hfff : 12'h0; // @[src/main/scala/idu/idu.scala 128:37]
  wire [31:0] _io_o_imm_T_13 = {_io_o_imm_T_9,io_ins[19:12],io_ins[20],io_ins[30:21],1'h0}; // @[src/main/scala/idu/idu.scala 128:32]
  wire [31:0] _io_o_imm_T_23 = {_io_o_imm_T_2,io_ins[7],io_ins[30:25],io_ins[11:8],1'h0}; // @[src/main/scala/idu/idu.scala 130:30]
  wire [31:0] _io_o_imm_T_28 = {_io_o_imm_T_2,func7,rd}; // @[src/main/scala/idu/idu.scala 131:30]
  wire [31:0] _io_o_imm_T_29 = TYPES ? _io_o_imm_T_28 : 32'h0; // @[src/main/scala/idu/idu.scala 131:19]
  wire [31:0] _io_o_imm_T_30 = TYPEB ? _io_o_imm_T_23 : _io_o_imm_T_29; // @[src/main/scala/idu/idu.scala 130:19]
  wire [31:0] _io_o_imm_T_31 = TYPEJALR ? _io_o_imm_T_4 : _io_o_imm_T_30; // @[src/main/scala/idu/idu.scala 129:19]
  wire [31:0] _io_o_imm_T_32 = TYPEJAL ? _io_o_imm_T_13 : _io_o_imm_T_31; // @[src/main/scala/idu/idu.scala 128:19]
  wire [31:0] _io_o_imm_T_33 = TYPELUI | TYPEAUIPC ? _io_o_imm_T_7 : _io_o_imm_T_32; // @[src/main/scala/idu/idu.scala 127:19]
  wire  _o_if_unsigned_T = func3 == 3'h5; // @[src/main/scala/idu/idu.scala 145:40]
  wire  _o_if_unsigned_T_7 = TYPER & _o_if_unsigned_T & func7[5]; // @[src/main/scala/idu/idu.scala 146:53]
  wire  _o_if_unsigned_T_8 = TYPEI & func3 == 3'h5 & func7[5] | _o_if_unsigned_T_7; // @[src/main/scala/idu/idu.scala 145:66]
  wire  _o_if_unsigned_T_9 = func3 == 3'h0; // @[src/main/scala/idu/idu.scala 147:40]
  wire  _o_if_unsigned_T_12 = TYPER & func3 == 3'h0 & func7[5]; // @[src/main/scala/idu/idu.scala 147:53]
  wire  o_if_unsigned = _o_if_unsigned_T_8 | _o_if_unsigned_T_12; // @[src/main/scala/idu/idu.scala 146:66]
  wire [2:0] _exu_opt_T_1 = {1'h0,func3[2:1]}; // @[src/main/scala/idu/idu.scala 151:31]
  wire [2:0] exu_opt = TYPEB ? _exu_opt_T_1 : func3; // @[src/main/scala/idu/idu.scala 151:20]
  wire  _io_o_alu_opt_T_4 = exu_opt == 3'h0; // @[src/main/scala/idu/idu.scala 157:36]
  wire  _io_o_alu_opt_T_5 = ~o_if_unsigned; // @[src/main/scala/idu/idu.scala 157:52]
  wire  _io_o_alu_opt_T_13 = exu_opt == 3'h5; // @[src/main/scala/idu/idu.scala 163:36]
  wire [9:0] _io_o_alu_opt_T_20 = exu_opt == 3'h7 ? 10'h100 : 10'h1; // @[src/main/scala/idu/idu.scala 166:27]
  wire [9:0] _io_o_alu_opt_T_21 = exu_opt == 3'h6 ? 10'h80 : _io_o_alu_opt_T_20; // @[src/main/scala/idu/idu.scala 165:27]
  wire [9:0] _io_o_alu_opt_T_22 = _io_o_alu_opt_T_13 & o_if_unsigned ? 10'h200 : _io_o_alu_opt_T_21; // @[src/main/scala/idu/idu.scala 164:27]
  wire [9:0] _io_o_alu_opt_T_23 = exu_opt == 3'h5 & _io_o_alu_opt_T_5 ? 10'h40 : _io_o_alu_opt_T_22; // @[src/main/scala/idu/idu.scala 163:27]
  wire [9:0] _io_o_alu_opt_T_24 = exu_opt == 3'h4 ? 10'h20 : _io_o_alu_opt_T_23; // @[src/main/scala/idu/idu.scala 162:27]
  wire [9:0] _io_o_alu_opt_T_25 = exu_opt == 3'h3 ? 10'h10 : _io_o_alu_opt_T_24; // @[src/main/scala/idu/idu.scala 161:27]
  wire [9:0] _io_o_alu_opt_T_26 = exu_opt == 3'h2 ? 10'h8 : _io_o_alu_opt_T_25; // @[src/main/scala/idu/idu.scala 160:27]
  wire [9:0] _io_o_alu_opt_T_27 = exu_opt == 3'h1 ? 10'h4 : _io_o_alu_opt_T_26; // @[src/main/scala/idu/idu.scala 159:27]
  wire [9:0] _io_o_alu_opt_T_28 = _io_o_alu_opt_T_4 & o_if_unsigned ? 10'h2 : _io_o_alu_opt_T_27; // @[src/main/scala/idu/idu.scala 158:27]
  wire [9:0] _io_o_alu_opt_T_29 = exu_opt == 3'h0 & ~o_if_unsigned ? 10'h1 : _io_o_alu_opt_T_28; // @[src/main/scala/idu/idu.scala 157:27]
  wire [9:0] _io_o_alu_opt_T_30 = CSRRW ? 10'h1 : _io_o_alu_opt_T_29; // @[src/main/scala/idu/idu.scala 156:27]
  wire [9:0] _io_o_alu_opt_T_31 = CSRRS ? 10'h80 : _io_o_alu_opt_T_30; // @[src/main/scala/idu/idu.scala 155:27]
  wire [1:0] _io_o_src_sel1_T_15 = CSRRS ? 2'h1 : 2'h0; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_16 = CSRRW ? 2'h1 : _io_o_src_sel1_T_15; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_17 = TYPEB ? 2'h1 : _io_o_src_sel1_T_16; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_18 = TYPES ? 2'h1 : _io_o_src_sel1_T_17; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_19 = TYPEI_LOAD ? 2'h1 : _io_o_src_sel1_T_18; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_20 = TYPEJALR ? 2'h2 : _io_o_src_sel1_T_19; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_21 = TYPEJAL ? 2'h2 : _io_o_src_sel1_T_20; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_22 = TYPEAUIPC ? 2'h2 : _io_o_src_sel1_T_21; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_23 = TYPELUI ? 2'h1 : _io_o_src_sel1_T_22; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [1:0] _io_o_src_sel1_T_24 = TYPER ? 2'h1 : _io_o_src_sel1_T_23; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_15 = CSRRS ? 3'h1 : 3'h0; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_16 = CSRRW ? 3'h2 : _io_o_src_sel2_T_15; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_17 = TYPEB ? 3'h1 : _io_o_src_sel2_T_16; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_18 = TYPES ? 3'h2 : _io_o_src_sel2_T_17; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_19 = TYPEI_LOAD ? 3'h2 : _io_o_src_sel2_T_18; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_20 = TYPEJALR ? 3'h4 : _io_o_src_sel2_T_19; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_21 = TYPEJAL ? 3'h4 : _io_o_src_sel2_T_20; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_22 = TYPEAUIPC ? 3'h2 : _io_o_src_sel2_T_21; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_23 = TYPELUI ? 3'h2 : _io_o_src_sel2_T_22; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [2:0] _io_o_src_sel2_T_24 = TYPER ? 3'h1 : _io_o_src_sel2_T_23; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire  _io_o_ecall_T_2 = TYPEEBRK & _o_if_unsigned_T_9; // @[src/main/scala/idu/idu.scala 199:40]
  assign io_o_imm = TYPEI | TYPEI_LOAD ? _io_o_imm_T_4 : _io_o_imm_T_33; // @[src/main/scala/idu/idu.scala 126:18]
  assign io_o_rd = io_ins[11:7]; // @[src/main/scala/idu/idu.scala 101:24]
  assign io_o_rs1 = TYPEAUIPC | TYPELUI | TYPEJAL ? 5'h0 : rs1; // @[src/main/scala/idu/idu.scala 136:20]
  assign io_o_rs2 = TYPER | TYPEB | TYPES ? rs2 : 5'h0; // @[src/main/scala/idu/idu.scala 137:20]
  assign io_o_csr_addr = TYPEEBRK ? io_ins[31:20] : 12'h0; // @[src/main/scala/idu/idu.scala 139:23]
  assign io_o_exu_opt = io_ins[14:12]; // @[src/main/scala/idu/idu.scala 96:24]
  assign io_o_alu_opt = TYPES | TYPEI_LOAD | TYPELUI | TYPEAUIPC | TYPEJAL ? 10'h1 : _io_o_alu_opt_T_31; // @[src/main/scala/idu/idu.scala 154:22]
  assign io_o_wen = TYPES | TYPEB | TYPEFENCE ? 1'h0 : 1'h1; // @[src/main/scala/idu/idu.scala 141:18]
  assign io_o_csr_wen = CSRRS | CSRRW; // @[src/main/scala/idu/idu.scala 142:25]
  assign io_o_src_sel1 = TYPEI ? 2'h1 : _io_o_src_sel1_T_24; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_o_src_sel2 = TYPEI ? 3'h2 : _io_o_src_sel2_T_24; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_o_mret = _io_o_ecall_T_2 & rs2[1:0] == 2'h2; // @[src/main/scala/idu/idu.scala 200:64]
  assign io_o_ecall = TYPEEBRK & _o_if_unsigned_T_9 & rs2[1:0] == 2'h0; // @[src/main/scala/idu/idu.scala 199:64]
  assign io_o_load = opcode == 7'h3; // @[src/main/scala/idu/idu.scala 203:25]
  assign io_o_store = opcode == 7'h23; // @[src/main/scala/idu/idu.scala 204:25]
  assign io_o_brch = opcode == 7'h63; // @[src/main/scala/idu/idu.scala 205:25]
  assign io_o_jal = opcode == 7'h6f; // @[src/main/scala/idu/idu.scala 206:25]
  assign io_o_jalr = opcode == 7'h67; // @[src/main/scala/idu/idu.scala 207:25]
  assign io_o_ebreak = _io_o_ecall_T_2 & rs2[1:0] == 2'h1; // @[src/main/scala/idu/idu.scala 211:67]
  assign io_o_fence_i = TYPEFENCE & _CSRRW_T; // @[src/main/scala/idu/idu.scala 210:43]
endmodule
module IDU_EXU_Regs(
  input         clock,
  input         reset,
  input  [31:0] io_i_pc, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_pre_valid, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_post_ready, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [31:0] io_i_imm, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [11:0] io_i_csr_addr, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [31:0] io_i_src1, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [31:0] io_i_src2, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [3:0]  io_i_rd, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [31:0] io_i_csr_rs2, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_csr_src_sel, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [31:0] io_i_mepc, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [31:0] io_i_mtvec, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [2:0]  io_i_exu_opt, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [9:0]  io_i_alu_opt, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_wen, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_csr_wen, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [1:0]  io_i_src_sel1, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input  [2:0]  io_i_src_sel2, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_mret, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_ecall, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_load, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_store, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_brch, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_jal, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_jalr, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_fence_i, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  input         io_i_ebreak, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [31:0] io_out_pc, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [31:0] io_out_src1, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [31:0] io_out_src2, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [31:0] io_out_imm, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [1:0]  io_out_src_sel1, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [2:0]  io_out_src_sel2, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [3:0]  io_out_rd, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [2:0]  io_out_exu_opt, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [9:0]  io_out_alu_opt, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_wen, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_csr_wen, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_mret, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_ecall, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_load, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_store, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_brch, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_jal, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_jalr, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_fence_i, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_out_ebreak, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output [11:0] io_out_csr_addr, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_pre_ready, // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
  output        io_post_valid // @[src/main/scala/idu/idu_exu_regs.scala 33:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_REG_INIT
  reg  postValid; // @[src/main/scala/idu/idu_exu_regs.scala 70:26]
  wire  _GEN_0 = ~io_i_pre_valid & io_i_post_ready & io_post_valid ? 1'h0 : postValid; // @[src/main/scala/idu/idu_exu_regs.scala 83:67 84:15 70:26]
  wire  _GEN_1 = io_i_pre_valid | _GEN_0; // @[src/main/scala/idu/idu_exu_regs.scala 81:24 82:15]
  reg [31:0] out_reg_pc; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [31:0] out_reg_src1; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [31:0] out_reg_src2; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [31:0] out_reg_imm; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [1:0] out_reg_src_sel1; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [2:0] out_reg_src_sel2; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [3:0] out_reg_rd; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [2:0] out_reg_exu_opt; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [9:0] out_reg_alu_opt; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_wen; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_csr_wen; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_mret; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_ecall; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_load; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_store; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_brch; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_jal; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_jalr; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_fence_i; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg  out_reg_ebreak; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  reg [11:0] out_reg_csr_addr; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
  assign io_out_pc = out_reg_pc; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_src1 = out_reg_src1; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_src2 = out_reg_src2; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_imm = out_reg_imm; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_src_sel1 = out_reg_src_sel1; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_src_sel2 = out_reg_src_sel2; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_rd = out_reg_rd; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_exu_opt = out_reg_exu_opt; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_alu_opt = out_reg_alu_opt; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_wen = out_reg_wen; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_csr_wen = out_reg_csr_wen; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_mret = out_reg_mret; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_ecall = out_reg_ecall; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_load = out_reg_load; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_store = out_reg_store; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_brch = out_reg_brch; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_jal = out_reg_jal; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_jalr = out_reg_jalr; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_fence_i = out_reg_fence_i; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_ebreak = out_reg_ebreak; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_out_csr_addr = out_reg_csr_addr; // @[src/main/scala/idu/idu_exu_regs.scala 115:10]
  assign io_pre_ready = io_i_post_ready; // @[src/main/scala/idu/idu_exu_regs.scala 73:17]
  assign io_post_valid = postValid; // @[src/main/scala/idu/idu_exu_regs.scala 72:17]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 70:26]
      postValid <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 70:26]
    end else begin
      postValid <= _GEN_1;
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_pc <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_pc <= io_i_pc; // @[src/main/scala/idu/idu_exu_regs.scala 90:16]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_pc <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_src1 <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      if (io_i_ecall) begin // @[src/main/scala/idu/idu_exu_regs.scala 78:17]
        out_reg_src1 <= io_i_mtvec;
      end else if (io_i_mret) begin // @[src/main/scala/idu/idu_exu_regs.scala 78:45]
        out_reg_src1 <= io_i_mepc;
      end else begin
        out_reg_src1 <= io_i_src1;
      end
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_src1 <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_src2 <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      if (io_i_csr_src_sel) begin // @[src/main/scala/idu/idu_exu_regs.scala 79:17]
        out_reg_src2 <= io_i_csr_rs2;
      end else begin
        out_reg_src2 <= io_i_src2;
      end
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_src2 <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_imm <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_imm <= io_i_imm; // @[src/main/scala/idu/idu_exu_regs.scala 93:17]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_imm <= 32'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_src_sel1 <= 2'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_src_sel1 <= io_i_src_sel1; // @[src/main/scala/idu/idu_exu_regs.scala 94:22]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_src_sel1 <= 2'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_src_sel2 <= 3'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_src_sel2 <= io_i_src_sel2; // @[src/main/scala/idu/idu_exu_regs.scala 95:22]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_src_sel2 <= 3'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_rd <= 4'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_rd <= io_i_rd; // @[src/main/scala/idu/idu_exu_regs.scala 96:16]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_rd <= 4'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_exu_opt <= 3'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_exu_opt <= io_i_exu_opt; // @[src/main/scala/idu/idu_exu_regs.scala 97:21]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_exu_opt <= 3'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_alu_opt <= 10'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_alu_opt <= io_i_alu_opt; // @[src/main/scala/idu/idu_exu_regs.scala 98:21]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_alu_opt <= 10'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_wen <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_wen <= io_i_wen; // @[src/main/scala/idu/idu_exu_regs.scala 99:17]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_wen <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_csr_wen <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_csr_wen <= io_i_csr_wen; // @[src/main/scala/idu/idu_exu_regs.scala 100:21]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_csr_wen <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_mret <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_mret <= io_i_mret; // @[src/main/scala/idu/idu_exu_regs.scala 101:18]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_mret <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_ecall <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_ecall <= io_i_ecall; // @[src/main/scala/idu/idu_exu_regs.scala 102:19]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_ecall <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_load <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_load <= io_i_load; // @[src/main/scala/idu/idu_exu_regs.scala 103:18]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_load <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_store <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_store <= io_i_store; // @[src/main/scala/idu/idu_exu_regs.scala 104:19]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_store <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_brch <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_brch <= io_i_brch; // @[src/main/scala/idu/idu_exu_regs.scala 105:18]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_brch <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_jal <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_jal <= io_i_jal; // @[src/main/scala/idu/idu_exu_regs.scala 106:17]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_jal <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_jalr <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_jalr <= io_i_jalr; // @[src/main/scala/idu/idu_exu_regs.scala 107:18]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_jalr <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_fence_i <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_fence_i <= io_i_fence_i; // @[src/main/scala/idu/idu_exu_regs.scala 109:21]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_fence_i <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_ebreak <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_ebreak <= io_i_ebreak; // @[src/main/scala/idu/idu_exu_regs.scala 108:20]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_ebreak <= 1'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
    if (reset) begin // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
      out_reg_csr_addr <= 12'h0; // @[src/main/scala/idu/idu_exu_regs.scala 87:24]
    end else if (io_i_post_ready & io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 89:42]
      out_reg_csr_addr <= io_i_csr_addr; // @[src/main/scala/idu/idu_exu_regs.scala 110:22]
    end else if (io_i_post_ready & ~io_post_valid) begin // @[src/main/scala/idu/idu_exu_regs.scala 111:49]
      out_reg_csr_addr <= 12'h0; // @[src/main/scala/idu/idu_exu_regs.scala 112:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  postValid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  out_reg_pc = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  out_reg_src1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  out_reg_src2 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  out_reg_imm = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  out_reg_src_sel1 = _RAND_5[1:0];
  _RAND_6 = {1{`RANDOM}};
  out_reg_src_sel2 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  out_reg_rd = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  out_reg_exu_opt = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  out_reg_alu_opt = _RAND_9[9:0];
  _RAND_10 = {1{`RANDOM}};
  out_reg_wen = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  out_reg_csr_wen = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  out_reg_mret = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  out_reg_ecall = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  out_reg_load = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  out_reg_store = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  out_reg_brch = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  out_reg_jal = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  out_reg_jalr = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  out_reg_fence_i = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  out_reg_ebreak = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  out_reg_csr_addr = _RAND_21[11:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ALU(
  input  [31:0] io_src1, // @[src/main/scala/exu/alu.scala 8:14]
  input  [31:0] io_src2, // @[src/main/scala/exu/alu.scala 8:14]
  input  [9:0]  io_opt, // @[src/main/scala/exu/alu.scala 8:14]
  output [31:0] io_res // @[src/main/scala/exu/alu.scala 8:14]
);
  wire [31:0] addRes = io_src1 + io_src2; // @[src/main/scala/exu/alu.scala 15:25]
  wire [31:0] subRes = io_src1 - io_src2; // @[src/main/scala/exu/alu.scala 16:25]
  wire [31:0] andRes = io_src1 & io_src2; // @[src/main/scala/exu/alu.scala 17:25]
  wire [31:0] orRes = io_src1 | io_src2; // @[src/main/scala/exu/alu.scala 18:25]
  wire [31:0] xorRes = io_src1 ^ io_src2; // @[src/main/scala/exu/alu.scala 19:25]
  wire [62:0] _GEN_8 = {{31'd0}, io_src1}; // @[src/main/scala/exu/alu.scala 20:32]
  wire [62:0] sllRes = _GEN_8 << io_src2[4:0]; // @[src/main/scala/exu/alu.scala 20:32]
  wire [31:0] srlRes = io_src1 >> io_src2[4:0]; // @[src/main/scala/exu/alu.scala 21:32]
  wire [31:0] sraRes = $signed(io_src1) >>> io_src2[4:0]; // @[src/main/scala/exu/alu.scala 22:51]
  wire  sltRes = $signed(io_src1) < $signed(io_src2); // @[src/main/scala/exu/alu.scala 23:36]
  wire  sltuRes = io_src1 < io_src2; // @[src/main/scala/exu/alu.scala 24:29]
  wire [31:0] _io_res_T_10 = io_opt[0] ? addRes : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [31:0] _io_res_T_11 = io_opt[1] ? subRes : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_12 = io_opt[2] ? sllRes : 63'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire  _io_res_T_13 = io_opt[3] & sltRes; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire  _io_res_T_14 = io_opt[4] & sltuRes; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [31:0] _io_res_T_15 = io_opt[5] ? xorRes : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [31:0] _io_res_T_16 = io_opt[6] ? srlRes : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [31:0] _io_res_T_17 = io_opt[7] ? orRes : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [31:0] _io_res_T_18 = io_opt[8] ? andRes : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [31:0] _io_res_T_19 = io_opt[9] ? sraRes : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [31:0] _io_res_T_20 = _io_res_T_10 | _io_res_T_11; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_0 = {{31'd0}, _io_res_T_20}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_21 = _GEN_0 | _io_res_T_12; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_1 = {{62'd0}, _io_res_T_13}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_22 = _io_res_T_21 | _GEN_1; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_2 = {{62'd0}, _io_res_T_14}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_23 = _io_res_T_22 | _GEN_2; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_3 = {{31'd0}, _io_res_T_15}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_24 = _io_res_T_23 | _GEN_3; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_4 = {{31'd0}, _io_res_T_16}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_25 = _io_res_T_24 | _GEN_4; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_5 = {{31'd0}, _io_res_T_17}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_26 = _io_res_T_25 | _GEN_5; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_6 = {{31'd0}, _io_res_T_18}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_27 = _io_res_T_26 | _GEN_6; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _GEN_7 = {{31'd0}, _io_res_T_19}; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  wire [62:0] _io_res_T_28 = _io_res_T_27 | _GEN_7; // @[src/main/scala/chisel3/util/Mux.scala 30:73]
  assign io_res = _io_res_T_28[31:0]; // @[src/main/scala/exu/alu.scala 26:10]
endmodule
module LSU(
  input         clock,
  input         reset,
  input  [31:0] io_storeSrc, // @[src/main/scala/exu/lsu.scala 8:14]
  input  [31:0] io_aluRes, // @[src/main/scala/exu/lsu.scala 8:14]
  input  [2:0]  io_exuOpt, // @[src/main/scala/exu/lsu.scala 8:14]
  output [31:0] io_loadRes, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_i_load, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_i_store, // @[src/main/scala/exu/lsu.scala 8:14]
  output [31:0] io_M_axi_AXI_AWADDR, // @[src/main/scala/exu/lsu.scala 8:14]
  output        io_M_axi_AXI_AWVALID, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_M_axi_AXI_AWREADY, // @[src/main/scala/exu/lsu.scala 8:14]
  output [2:0]  io_M_axi_AXI_AWSIZE, // @[src/main/scala/exu/lsu.scala 8:14]
  output        io_M_axi_AXI_WVALID, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_M_axi_AXI_WREADY, // @[src/main/scala/exu/lsu.scala 8:14]
  output [31:0] io_M_axi_AXI_WDATA, // @[src/main/scala/exu/lsu.scala 8:14]
  output [3:0]  io_M_axi_AXI_WSTRB, // @[src/main/scala/exu/lsu.scala 8:14]
  input  [31:0] io_M_axi_AXI_RDATA, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_M_axi_AXI_RVALID, // @[src/main/scala/exu/lsu.scala 8:14]
  output        io_M_axi_AXI_RREADY, // @[src/main/scala/exu/lsu.scala 8:14]
  output [31:0] io_M_axi_AXI_ARADDR, // @[src/main/scala/exu/lsu.scala 8:14]
  output        io_M_axi_AXI_ARVALID, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_M_axi_AXI_ARREADY, // @[src/main/scala/exu/lsu.scala 8:14]
  output [2:0]  io_M_axi_AXI_ARSIZE, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_M_axi_AXI_BVALID, // @[src/main/scala/exu/lsu.scala 8:14]
  output        io_M_axi_AXI_BREADY, // @[src/main/scala/exu/lsu.scala 8:14]
  input         io_oPreReady // @[src/main/scala/exu/lsu.scala 8:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg  axi_awvalid; // @[src/main/scala/exu/lsu.scala 37:28]
  reg  axi_wvalid; // @[src/main/scala/exu/lsu.scala 38:27]
  reg  axi_arvalid; // @[src/main/scala/exu/lsu.scala 39:28]
  reg  axi_rready; // @[src/main/scala/exu/lsu.scala 40:27]
  reg  axi_bready; // @[src/main/scala/exu/lsu.scala 41:27]
  reg [31:0] axi_axaddr; // @[src/main/scala/exu/lsu.scala 42:27]
  wire [1:0] _io_M_axi_AXI_AWSIZE_T_3 = 3'h1 == io_exuOpt ? 2'h1 : 2'h2; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_M_axi_AXI_AWSIZE_T_5 = 3'h0 == io_exuOpt ? 2'h0 : _io_M_axi_AXI_AWSIZE_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_M_axi_AXI_WSTRB_T_3 = 3'h1 == io_exuOpt ? 2'h3 : {{1'd0}, 3'h0 == io_exuOpt}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_M_axi_AXI_ARSIZE_T_4 = 2'h1 == io_exuOpt[1:0] ? 2'h1 : 2'h2; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_M_axi_AXI_ARSIZE_T_6 = 2'h0 == io_exuOpt[1:0] ? 2'h0 : _io_M_axi_AXI_ARSIZE_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  reg  init_txn_ff2; // @[src/main/scala/exu/lsu.scala 79:31]
  reg  init_txn_ff; // @[src/main/scala/exu/lsu.scala 80:31]
  reg  o_pre_ready_d1; // @[src/main/scala/exu/lsu.scala 82:31]
  wire  is_ls = io_i_load | io_i_store; // @[src/main/scala/exu/lsu.scala 85:26]
  wire  init_txn_pulse = reset ? 1'h0 : ~init_txn_ff2 & init_txn_ff; // @[src/main/scala/exu/lsu.scala 86:27]
  wire  txn_pulse_load = io_i_load & init_txn_pulse; // @[src/main/scala/exu/lsu.scala 88:37]
  wire  txn_pulse_store = io_i_store & init_txn_pulse; // @[src/main/scala/exu/lsu.scala 89:37]
  wire  _GEN_0 = io_M_axi_AXI_AWREADY & axi_awvalid ? 1'h0 : axi_awvalid; // @[src/main/scala/exu/lsu.scala 97:51 98:17 37:28]
  wire  _GEN_1 = txn_pulse_store | _GEN_0; // @[src/main/scala/exu/lsu.scala 95:32 96:17]
  wire  _GEN_2 = io_M_axi_AXI_WREADY & axi_wvalid ? 1'h0 : axi_wvalid; // @[src/main/scala/exu/lsu.scala 103:49 104:16 38:27]
  wire  _GEN_3 = txn_pulse_store | _GEN_2; // @[src/main/scala/exu/lsu.scala 101:32 102:16]
  wire  _GEN_4 = axi_bready ? 1'h0 : axi_bready; // @[src/main/scala/exu/lsu.scala 109:26 110:16 41:27]
  wire  _GEN_5 = io_M_axi_AXI_BVALID & ~axi_bready | _GEN_4; // @[src/main/scala/exu/lsu.scala 107:44 108:16]
  wire  _GEN_6 = axi_arvalid & io_M_axi_AXI_ARREADY ? 1'h0 : axi_arvalid; // @[src/main/scala/exu/lsu.scala 115:51 116:17 39:28]
  wire  _GEN_7 = txn_pulse_load | _GEN_6; // @[src/main/scala/exu/lsu.scala 113:31 114:17]
  wire  _GEN_8 = axi_rready ? 1'h0 : axi_rready; // @[src/main/scala/exu/lsu.scala 121:26 122:16 40:27]
  wire  _GEN_9 = io_M_axi_AXI_RVALID & ~axi_rready | _GEN_8; // @[src/main/scala/exu/lsu.scala 119:44 120:16]
  wire [23:0] _io_loadRes_T_1 = io_M_axi_AXI_RDATA[7] ? 24'hffffff : 24'h0; // @[src/main/scala/exu/lsu.scala 127:19]
  wire [31:0] _io_loadRes_T_3 = {_io_loadRes_T_1,io_M_axi_AXI_RDATA[7:0]}; // @[src/main/scala/exu/lsu.scala 127:14]
  wire [15:0] _io_loadRes_T_5 = io_M_axi_AXI_RDATA[15] ? 16'hffff : 16'h0; // @[src/main/scala/exu/lsu.scala 128:19]
  wire [31:0] _io_loadRes_T_7 = {_io_loadRes_T_5,io_M_axi_AXI_RDATA[15:0]}; // @[src/main/scala/exu/lsu.scala 128:14]
  wire [31:0] _io_loadRes_T_9 = {24'h0,io_M_axi_AXI_RDATA[7:0]}; // @[src/main/scala/exu/lsu.scala 130:15]
  wire [31:0] _io_loadRes_T_11 = {16'h0,io_M_axi_AXI_RDATA[15:0]}; // @[src/main/scala/exu/lsu.scala 131:15]
  wire [31:0] _io_loadRes_T_13 = 3'h0 == io_exuOpt ? _io_loadRes_T_3 : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_loadRes_T_15 = 3'h1 == io_exuOpt ? _io_loadRes_T_7 : _io_loadRes_T_13; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_loadRes_T_17 = 3'h2 == io_exuOpt ? io_M_axi_AXI_RDATA : _io_loadRes_T_15; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_loadRes_T_19 = 3'h4 == io_exuOpt ? _io_loadRes_T_9 : _io_loadRes_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_loadRes = 3'h5 == io_exuOpt ? _io_loadRes_T_11 : _io_loadRes_T_19; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_M_axi_AXI_AWADDR = axi_axaddr; // @[src/main/scala/exu/lsu.scala 44:23]
  assign io_M_axi_AXI_AWVALID = axi_awvalid; // @[src/main/scala/exu/lsu.scala 46:24]
  assign io_M_axi_AXI_AWSIZE = {{1'd0}, _io_M_axi_AXI_AWSIZE_T_5}; // @[src/main/scala/exu/lsu.scala 48:23]
  assign io_M_axi_AXI_WVALID = axi_wvalid; // @[src/main/scala/exu/lsu.scala 56:23]
  assign io_M_axi_AXI_WDATA = io_storeSrc; // @[src/main/scala/exu/lsu.scala 45:22]
  assign io_M_axi_AXI_WSTRB = 3'h2 == io_exuOpt ? 4'hf : {{2'd0}, _io_M_axi_AXI_WSTRB_T_3}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_M_axi_AXI_RREADY = axi_rready; // @[src/main/scala/exu/lsu.scala 75:23]
  assign io_M_axi_AXI_ARADDR = axi_axaddr; // @[src/main/scala/exu/lsu.scala 65:23]
  assign io_M_axi_AXI_ARVALID = axi_arvalid; // @[src/main/scala/exu/lsu.scala 66:24]
  assign io_M_axi_AXI_ARSIZE = {{1'd0}, _io_M_axi_AXI_ARSIZE_T_6}; // @[src/main/scala/exu/lsu.scala 68:23]
  assign io_M_axi_AXI_BREADY = axi_bready; // @[src/main/scala/exu/lsu.scala 63:23]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/exu/lsu.scala 37:28]
      axi_awvalid <= 1'h0; // @[src/main/scala/exu/lsu.scala 37:28]
    end else begin
      axi_awvalid <= _GEN_1;
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 38:27]
      axi_wvalid <= 1'h0; // @[src/main/scala/exu/lsu.scala 38:27]
    end else begin
      axi_wvalid <= _GEN_3;
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 39:28]
      axi_arvalid <= 1'h0; // @[src/main/scala/exu/lsu.scala 39:28]
    end else begin
      axi_arvalid <= _GEN_7;
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 40:27]
      axi_rready <= 1'h0; // @[src/main/scala/exu/lsu.scala 40:27]
    end else begin
      axi_rready <= _GEN_9;
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 41:27]
      axi_bready <= 1'h0; // @[src/main/scala/exu/lsu.scala 41:27]
    end else begin
      axi_bready <= _GEN_5;
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 42:27]
      axi_axaddr <= 32'h0; // @[src/main/scala/exu/lsu.scala 42:27]
    end else begin
      axi_axaddr <= io_aluRes; // @[src/main/scala/exu/lsu.scala 93:14]
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 79:31]
      init_txn_ff2 <= 1'h0; // @[src/main/scala/exu/lsu.scala 79:31]
    end else begin
      init_txn_ff2 <= init_txn_ff; // @[src/main/scala/exu/lsu.scala 92:16]
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 80:31]
      init_txn_ff <= 1'h0; // @[src/main/scala/exu/lsu.scala 80:31]
    end else if (reset) begin // @[src/main/scala/exu/lsu.scala 87:27]
      init_txn_ff <= 1'h0;
    end else begin
      init_txn_ff <= o_pre_ready_d1 & is_ls;
    end
    if (reset) begin // @[src/main/scala/exu/lsu.scala 82:31]
      o_pre_ready_d1 <= 1'h0; // @[src/main/scala/exu/lsu.scala 82:31]
    end else begin
      o_pre_ready_d1 <= io_oPreReady; // @[src/main/scala/exu/lsu.scala 83:18]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  axi_awvalid = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  axi_wvalid = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  axi_arvalid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  axi_rready = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  axi_bready = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  axi_axaddr = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  init_txn_ff2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  init_txn_ff = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  o_pre_ready_d1 = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module EXU(
  input         clock,
  input         reset,
  input  [31:0] io_i_src1, // @[src/main/scala/exu/exu.scala 9:14]
  input  [31:0] io_i_src2, // @[src/main/scala/exu/exu.scala 9:14]
  input  [31:0] io_i_pc, // @[src/main/scala/exu/exu.scala 9:14]
  input  [31:0] io_i_imm, // @[src/main/scala/exu/exu.scala 9:14]
  input  [1:0]  io_i_src_sel1, // @[src/main/scala/exu/exu.scala 9:14]
  input  [2:0]  io_i_src_sel2, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_load, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_store, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_brch, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_jal, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_jalr, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_ecall, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_mret, // @[src/main/scala/exu/exu.scala 9:14]
  input  [9:0]  io_i_alu_opt, // @[src/main/scala/exu/exu.scala 9:14]
  input  [2:0]  io_exu_opt, // @[src/main/scala/exu/exu.scala 9:14]
  output [31:0] io_o_res, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_o_brch, // @[src/main/scala/exu/exu.scala 9:14]
  output [31:0] io_o_pc_next, // @[src/main/scala/exu/exu.scala 9:14]
  output [31:0] io_lsu_AXI_AWADDR, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_lsu_AXI_AWVALID, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_lsu_AXI_AWREADY, // @[src/main/scala/exu/exu.scala 9:14]
  output [2:0]  io_lsu_AXI_AWSIZE, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_lsu_AXI_WVALID, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_lsu_AXI_WREADY, // @[src/main/scala/exu/exu.scala 9:14]
  output [31:0] io_lsu_AXI_WDATA, // @[src/main/scala/exu/exu.scala 9:14]
  output [3:0]  io_lsu_AXI_WSTRB, // @[src/main/scala/exu/exu.scala 9:14]
  input  [31:0] io_lsu_AXI_RDATA, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_lsu_AXI_RVALID, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_lsu_AXI_RREADY, // @[src/main/scala/exu/exu.scala 9:14]
  output [31:0] io_lsu_AXI_ARADDR, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_lsu_AXI_ARVALID, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_lsu_AXI_ARREADY, // @[src/main/scala/exu/exu.scala 9:14]
  output [2:0]  io_lsu_AXI_ARSIZE, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_lsu_AXI_BVALID, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_lsu_AXI_BREADY, // @[src/main/scala/exu/exu.scala 9:14]
  input         io_i_pre_valid, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_o_post_valid, // @[src/main/scala/exu/exu.scala 9:14]
  output        io_o_pre_ready // @[src/main/scala/exu/exu.scala 9:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] alu_io_src1; // @[src/main/scala/exu/exu.scala 86:19]
  wire [31:0] alu_io_src2; // @[src/main/scala/exu/exu.scala 86:19]
  wire [9:0] alu_io_opt; // @[src/main/scala/exu/exu.scala 86:19]
  wire [31:0] alu_io_res; // @[src/main/scala/exu/exu.scala 86:19]
  wire  lsu_clock; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_reset; // @[src/main/scala/exu/exu.scala 93:19]
  wire [31:0] lsu_io_storeSrc; // @[src/main/scala/exu/exu.scala 93:19]
  wire [31:0] lsu_io_aluRes; // @[src/main/scala/exu/exu.scala 93:19]
  wire [2:0] lsu_io_exuOpt; // @[src/main/scala/exu/exu.scala 93:19]
  wire [31:0] lsu_io_loadRes; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_i_load; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_i_store; // @[src/main/scala/exu/exu.scala 93:19]
  wire [31:0] lsu_io_M_axi_AXI_AWADDR; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_AWVALID; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_AWREADY; // @[src/main/scala/exu/exu.scala 93:19]
  wire [2:0] lsu_io_M_axi_AXI_AWSIZE; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_WVALID; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_WREADY; // @[src/main/scala/exu/exu.scala 93:19]
  wire [31:0] lsu_io_M_axi_AXI_WDATA; // @[src/main/scala/exu/exu.scala 93:19]
  wire [3:0] lsu_io_M_axi_AXI_WSTRB; // @[src/main/scala/exu/exu.scala 93:19]
  wire [31:0] lsu_io_M_axi_AXI_RDATA; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_RVALID; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_RREADY; // @[src/main/scala/exu/exu.scala 93:19]
  wire [31:0] lsu_io_M_axi_AXI_ARADDR; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_ARVALID; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_ARREADY; // @[src/main/scala/exu/exu.scala 93:19]
  wire [2:0] lsu_io_M_axi_AXI_ARSIZE; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_BVALID; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_M_axi_AXI_BREADY; // @[src/main/scala/exu/exu.scala 93:19]
  wire  lsu_io_oPreReady; // @[src/main/scala/exu/exu.scala 93:19]
  wire  ifLsu = io_i_load | io_i_store; // @[src/main/scala/exu/exu.scala 54:25]
  reg  postValid; // @[src/main/scala/exu/exu.scala 56:26]
  wire  _io_o_post_valid_T_1 = io_lsu_AXI_RVALID & io_lsu_AXI_RREADY | io_lsu_AXI_BREADY; // @[src/main/scala/exu/exu.scala 60:74]
  wire [31:0] aluSrc1 = io_i_src_sel1[0] ? io_i_src1 : io_i_pc; // @[src/main/scala/exu/exu.scala 68:17]
  wire [31:0] _aluSrc2_T_1 = 3'h1 == io_i_src_sel2 ? io_i_src2 : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _aluSrc2_T_3 = 3'h2 == io_i_src_sel2 ? io_i_imm : _aluSrc2_T_1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] aluSrc2 = 3'h4 == io_i_src_sel2 ? 32'h4 : _aluSrc2_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_o_pc_next_T_1 = io_i_pc + 32'h4; // @[src/main/scala/exu/exu.scala 77:35]
  wire [31:0] _io_o_pc_next_T_3 = io_i_pc + io_i_imm; // @[src/main/scala/exu/exu.scala 78:27]
  wire [31:0] _io_o_pc_next_T_5 = io_i_src1 + io_i_imm; // @[src/main/scala/exu/exu.scala 79:29]
  wire [31:0] _io_o_pc_next_T_8 = io_i_mret ? io_i_src1 : _io_o_pc_next_T_1; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] _io_o_pc_next_T_9 = io_i_ecall ? io_i_src1 : _io_o_pc_next_T_8; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] _io_o_pc_next_T_10 = io_i_brch ? _io_o_pc_next_T_3 : _io_o_pc_next_T_9; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire [31:0] _io_o_pc_next_T_11 = io_i_jalr ? _io_o_pc_next_T_5 : _io_o_pc_next_T_10; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire  beq = aluSrc1 == aluSrc2; // @[src/main/scala/exu/exu.scala 106:21]
  wire  bne = ~beq; // @[src/main/scala/exu/exu.scala 107:13]
  wire [31:0] aluRes = alu_io_res; // @[src/main/scala/exu/exu.scala 52:20 90:10]
  wire  _brchRes_T_2 = ~aluRes[0]; // @[src/main/scala/exu/exu.scala 114:13]
  wire  _brchRes_T_9 = 3'h1 == io_exu_opt ? bne : 3'h0 == io_exu_opt & beq; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _brchRes_T_11 = 3'h4 == io_exu_opt ? aluRes[0] : _brchRes_T_9; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _brchRes_T_13 = 3'h5 == io_exu_opt ? _brchRes_T_2 : _brchRes_T_11; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _brchRes_T_15 = 3'h6 == io_exu_opt ? aluRes[0] : _brchRes_T_13; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  brchRes = 3'h7 == io_exu_opt ? _brchRes_T_2 : _brchRes_T_15; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] loadRes = lsu_io_loadRes; // @[src/main/scala/exu/exu.scala 103:11 53:21]
  ALU alu ( // @[src/main/scala/exu/exu.scala 86:19]
    .io_src1(alu_io_src1),
    .io_src2(alu_io_src2),
    .io_opt(alu_io_opt),
    .io_res(alu_io_res)
  );
  LSU lsu ( // @[src/main/scala/exu/exu.scala 93:19]
    .clock(lsu_clock),
    .reset(lsu_reset),
    .io_storeSrc(lsu_io_storeSrc),
    .io_aluRes(lsu_io_aluRes),
    .io_exuOpt(lsu_io_exuOpt),
    .io_loadRes(lsu_io_loadRes),
    .io_i_load(lsu_io_i_load),
    .io_i_store(lsu_io_i_store),
    .io_M_axi_AXI_AWADDR(lsu_io_M_axi_AXI_AWADDR),
    .io_M_axi_AXI_AWVALID(lsu_io_M_axi_AXI_AWVALID),
    .io_M_axi_AXI_AWREADY(lsu_io_M_axi_AXI_AWREADY),
    .io_M_axi_AXI_AWSIZE(lsu_io_M_axi_AXI_AWSIZE),
    .io_M_axi_AXI_WVALID(lsu_io_M_axi_AXI_WVALID),
    .io_M_axi_AXI_WREADY(lsu_io_M_axi_AXI_WREADY),
    .io_M_axi_AXI_WDATA(lsu_io_M_axi_AXI_WDATA),
    .io_M_axi_AXI_WSTRB(lsu_io_M_axi_AXI_WSTRB),
    .io_M_axi_AXI_RDATA(lsu_io_M_axi_AXI_RDATA),
    .io_M_axi_AXI_RVALID(lsu_io_M_axi_AXI_RVALID),
    .io_M_axi_AXI_RREADY(lsu_io_M_axi_AXI_RREADY),
    .io_M_axi_AXI_ARADDR(lsu_io_M_axi_AXI_ARADDR),
    .io_M_axi_AXI_ARVALID(lsu_io_M_axi_AXI_ARVALID),
    .io_M_axi_AXI_ARREADY(lsu_io_M_axi_AXI_ARREADY),
    .io_M_axi_AXI_ARSIZE(lsu_io_M_axi_AXI_ARSIZE),
    .io_M_axi_AXI_BVALID(lsu_io_M_axi_AXI_BVALID),
    .io_M_axi_AXI_BREADY(lsu_io_M_axi_AXI_BREADY),
    .io_oPreReady(lsu_io_oPreReady)
  );
  assign io_o_res = io_i_load ? loadRes : aluRes; // @[src/main/scala/exu/exu.scala 119:18]
  assign io_o_brch = io_i_brch & brchRes; // @[src/main/scala/exu/exu.scala 120:26]
  assign io_o_pc_next = io_i_jal ? _io_o_pc_next_T_3 : _io_o_pc_next_T_11; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_lsu_AXI_AWADDR = lsu_io_M_axi_AXI_AWADDR; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_AWVALID = lsu_io_M_axi_AXI_AWVALID; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_AWSIZE = lsu_io_M_axi_AXI_AWSIZE; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_WVALID = lsu_io_M_axi_AXI_WVALID; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_WDATA = lsu_io_M_axi_AXI_WDATA; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_WSTRB = lsu_io_M_axi_AXI_WSTRB; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_RREADY = lsu_io_M_axi_AXI_RREADY; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_ARADDR = lsu_io_M_axi_AXI_ARADDR; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_ARVALID = lsu_io_M_axi_AXI_ARVALID; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_ARSIZE = lsu_io_M_axi_AXI_ARSIZE; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_lsu_AXI_BREADY = lsu_io_M_axi_AXI_BREADY; // @[src/main/scala/exu/exu.scala 102:10]
  assign io_o_post_valid = ifLsu ? io_lsu_AXI_RVALID & io_lsu_AXI_RREADY | io_lsu_AXI_BREADY : postValid; // @[src/main/scala/exu/exu.scala 60:25]
  assign io_o_pre_ready = ifLsu ? _io_o_post_valid_T_1 : 1'h1; // @[src/main/scala/exu/exu.scala 61:24]
  assign alu_io_src1 = io_i_src_sel1[0] ? io_i_src1 : io_i_pc; // @[src/main/scala/exu/exu.scala 68:17]
  assign alu_io_src2 = 3'h4 == io_i_src_sel2 ? 32'h4 : _aluSrc2_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign alu_io_opt = io_i_alu_opt; // @[src/main/scala/exu/exu.scala 89:14]
  assign lsu_clock = clock;
  assign lsu_reset = reset;
  assign lsu_io_storeSrc = io_i_src2; // @[src/main/scala/exu/exu.scala 94:19]
  assign lsu_io_aluRes = alu_io_res; // @[src/main/scala/exu/exu.scala 52:20 90:10]
  assign lsu_io_exuOpt = io_exu_opt; // @[src/main/scala/exu/exu.scala 96:17]
  assign lsu_io_i_load = io_i_load; // @[src/main/scala/exu/exu.scala 97:17]
  assign lsu_io_i_store = io_i_store; // @[src/main/scala/exu/exu.scala 98:18]
  assign lsu_io_M_axi_AXI_AWREADY = io_lsu_AXI_AWREADY; // @[src/main/scala/exu/exu.scala 102:10]
  assign lsu_io_M_axi_AXI_WREADY = io_lsu_AXI_WREADY; // @[src/main/scala/exu/exu.scala 102:10]
  assign lsu_io_M_axi_AXI_RDATA = io_lsu_AXI_RDATA; // @[src/main/scala/exu/exu.scala 102:10]
  assign lsu_io_M_axi_AXI_RVALID = io_lsu_AXI_RVALID; // @[src/main/scala/exu/exu.scala 102:10]
  assign lsu_io_M_axi_AXI_ARREADY = io_lsu_AXI_ARREADY; // @[src/main/scala/exu/exu.scala 102:10]
  assign lsu_io_M_axi_AXI_BVALID = io_lsu_AXI_BVALID; // @[src/main/scala/exu/exu.scala 102:10]
  assign lsu_io_oPreReady = io_o_pre_ready; // @[src/main/scala/exu/exu.scala 100:20]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/exu/exu.scala 56:26]
      postValid <= 1'h0; // @[src/main/scala/exu/exu.scala 56:26]
    end else begin
      postValid <= io_i_pre_valid; // @[src/main/scala/exu/exu.scala 57:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  postValid = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module EXU_WBU_Regs(
  input         clock,
  input         reset,
  input         io_i_brch, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_i_jal, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_i_wen, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_i_csr_wen, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_i_jalr, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_i_ebreak, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_i_mret, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_i_ecall, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input  [31:0] io_i_res, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input  [31:0] io_i_pc_next, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input  [11:0] io_i_csr_addr, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input  [4:0]  io_i_rd_addr, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output [31:0] io_o_pc_next, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output [11:0] io_o_csr_addr, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output [4:0]  io_o_rd_addr, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_wen, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_csr_wen, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_brch, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_jal, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_jalr, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_mret, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_ecall, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_o_ebreak, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output [31:0] io_o_res, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  input         io_o_post_valid, // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
  output        io_next // @[src/main/scala/exu/exu_wbu_regs.scala 9:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] o_pc_next; // @[src/main/scala/exu/exu_wbu_regs.scala 41:29]
  reg [11:0] o_csr_addr; // @[src/main/scala/exu/exu_wbu_regs.scala 42:29]
  reg [4:0] o_rd_addr; // @[src/main/scala/exu/exu_wbu_regs.scala 43:29]
  reg  o_wen; // @[src/main/scala/exu/exu_wbu_regs.scala 44:29]
  reg  o_csr_wen; // @[src/main/scala/exu/exu_wbu_regs.scala 45:29]
  reg  o_brch; // @[src/main/scala/exu/exu_wbu_regs.scala 46:29]
  reg  o_jal; // @[src/main/scala/exu/exu_wbu_regs.scala 47:29]
  reg  o_jalr; // @[src/main/scala/exu/exu_wbu_regs.scala 48:29]
  reg  o_mret; // @[src/main/scala/exu/exu_wbu_regs.scala 49:29]
  reg  o_ecall; // @[src/main/scala/exu/exu_wbu_regs.scala 50:29]
  reg [31:0] o_res; // @[src/main/scala/exu/exu_wbu_regs.scala 51:29]
  reg  o_ebreak; // @[src/main/scala/exu/exu_wbu_regs.scala 52:29]
  reg  next; // @[src/main/scala/exu/exu_wbu_regs.scala 55:25]
  wire  _T_1 = ~io_o_post_valid; // @[src/main/scala/exu/exu_wbu_regs.scala 59:37]
  wire  _GEN_0 = ~io_o_post_valid ? 1'h0 : next; // @[src/main/scala/exu/exu_wbu_regs.scala 59:55 60:14 55:25]
  wire  _GEN_1 = io_o_post_valid | _GEN_0; // @[src/main/scala/exu/exu_wbu_regs.scala 57:48 58:14]
  assign io_o_pc_next = o_pc_next; // @[src/main/scala/exu/exu_wbu_regs.scala 93:16]
  assign io_o_csr_addr = o_csr_addr; // @[src/main/scala/exu/exu_wbu_regs.scala 94:17]
  assign io_o_rd_addr = o_rd_addr; // @[src/main/scala/exu/exu_wbu_regs.scala 95:16]
  assign io_o_wen = o_wen; // @[src/main/scala/exu/exu_wbu_regs.scala 96:12]
  assign io_o_csr_wen = o_csr_wen; // @[src/main/scala/exu/exu_wbu_regs.scala 97:16]
  assign io_o_brch = o_brch; // @[src/main/scala/exu/exu_wbu_regs.scala 98:13]
  assign io_o_jal = o_jal; // @[src/main/scala/exu/exu_wbu_regs.scala 99:12]
  assign io_o_jalr = o_jalr; // @[src/main/scala/exu/exu_wbu_regs.scala 100:13]
  assign io_o_mret = o_mret; // @[src/main/scala/exu/exu_wbu_regs.scala 101:13]
  assign io_o_ecall = o_ecall; // @[src/main/scala/exu/exu_wbu_regs.scala 102:14]
  assign io_o_ebreak = o_ebreak; // @[src/main/scala/exu/exu_wbu_regs.scala 104:15]
  assign io_o_res = o_res; // @[src/main/scala/exu/exu_wbu_regs.scala 103:12]
  assign io_next = next; // @[src/main/scala/exu/exu_wbu_regs.scala 56:15]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 41:29]
      o_pc_next <= 32'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 41:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_pc_next <= io_i_pc_next; // @[src/main/scala/exu/exu_wbu_regs.scala 65:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_pc_next <= 32'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 78:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 42:29]
      o_csr_addr <= 12'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 42:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_csr_addr <= io_i_csr_addr; // @[src/main/scala/exu/exu_wbu_regs.scala 66:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_csr_addr <= 12'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 79:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 43:29]
      o_rd_addr <= 5'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 43:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_rd_addr <= io_i_rd_addr; // @[src/main/scala/exu/exu_wbu_regs.scala 67:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_rd_addr <= 5'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 80:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 44:29]
      o_wen <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 44:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_wen <= io_i_wen; // @[src/main/scala/exu/exu_wbu_regs.scala 68:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_wen <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 81:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 45:29]
      o_csr_wen <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 45:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_csr_wen <= io_i_csr_wen; // @[src/main/scala/exu/exu_wbu_regs.scala 69:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_csr_wen <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 82:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 46:29]
      o_brch <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 46:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_brch <= io_i_brch; // @[src/main/scala/exu/exu_wbu_regs.scala 70:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_brch <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 83:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 47:29]
      o_jal <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 47:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_jal <= io_i_jal; // @[src/main/scala/exu/exu_wbu_regs.scala 71:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_jal <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 84:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 48:29]
      o_jalr <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 48:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_jalr <= io_i_jalr; // @[src/main/scala/exu/exu_wbu_regs.scala 72:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_jalr <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 85:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 49:29]
      o_mret <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 49:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_mret <= io_i_mret; // @[src/main/scala/exu/exu_wbu_regs.scala 73:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_mret <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 86:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 50:29]
      o_ecall <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 50:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_ecall <= io_i_ecall; // @[src/main/scala/exu/exu_wbu_regs.scala 74:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_ecall <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 87:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 51:29]
      o_res <= 32'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 51:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_res <= io_i_res; // @[src/main/scala/exu/exu_wbu_regs.scala 75:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_res <= 32'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 88:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 52:29]
      o_ebreak <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 52:29]
    end else if (io_o_post_valid) begin // @[src/main/scala/exu/exu_wbu_regs.scala 64:44]
      o_ebreak <= io_i_ebreak; // @[src/main/scala/exu/exu_wbu_regs.scala 76:17]
    end else if (_T_1) begin // @[src/main/scala/exu/exu_wbu_regs.scala 77:51]
      o_ebreak <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 89:17]
    end
    if (reset) begin // @[src/main/scala/exu/exu_wbu_regs.scala 55:25]
      next <= 1'h0; // @[src/main/scala/exu/exu_wbu_regs.scala 55:25]
    end else begin
      next <= _GEN_1;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  o_pc_next = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  o_csr_addr = _RAND_1[11:0];
  _RAND_2 = {1{`RANDOM}};
  o_rd_addr = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  o_wen = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  o_csr_wen = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  o_brch = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  o_jal = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  o_jalr = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  o_mret = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  o_ecall = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  o_res = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  o_ebreak = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  next = _RAND_12[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module WBU(
  input         clock,
  input         reset,
  input         io_i_wen, // @[src/main/scala/wbu/wbu.scala 8:14]
  input  [4:0]  io_i_rd_addr, // @[src/main/scala/wbu/wbu.scala 8:14]
  input  [11:0] io_i_csr_addr, // @[src/main/scala/wbu/wbu.scala 8:14]
  input         io_i_csr_wen, // @[src/main/scala/wbu/wbu.scala 8:14]
  input         io_i_brch, // @[src/main/scala/wbu/wbu.scala 8:14]
  input         io_i_jal, // @[src/main/scala/wbu/wbu.scala 8:14]
  input         io_i_jalr, // @[src/main/scala/wbu/wbu.scala 8:14]
  input         io_i_mret, // @[src/main/scala/wbu/wbu.scala 8:14]
  input         io_i_ecall, // @[src/main/scala/wbu/wbu.scala 8:14]
  input  [31:0] io_i_pc_next, // @[src/main/scala/wbu/wbu.scala 8:14]
  input  [31:0] io_i_res, // @[src/main/scala/wbu/wbu.scala 8:14]
  output [31:0] io_o_pc_next, // @[src/main/scala/wbu/wbu.scala 8:14]
  output [31:0] io_o_rd_wdata, // @[src/main/scala/wbu/wbu.scala 8:14]
  output [31:0] io_o_csr_rd_wdata, // @[src/main/scala/wbu/wbu.scala 8:14]
  output        io_o_wbu_wen, // @[src/main/scala/wbu/wbu.scala 8:14]
  output        io_o_wbu_csr_wen, // @[src/main/scala/wbu/wbu.scala 8:14]
  output [4:0]  io_o_rd_addr, // @[src/main/scala/wbu/wbu.scala 8:14]
  output [11:0] io_o_csr_addr, // @[src/main/scala/wbu/wbu.scala 8:14]
  output        io_o_pc_update, // @[src/main/scala/wbu/wbu.scala 8:14]
  input         io_next, // @[src/main/scala/wbu/wbu.scala 8:14]
  output        io_diff // @[src/main/scala/wbu/wbu.scala 8:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  o_pc_update; // @[src/main/scala/wbu/wbu.scala 46:28]
  reg [31:0] o_pc_next; // @[src/main/scala/wbu/wbu.scala 47:26]
  reg  diff; // @[src/main/scala/wbu/wbu.scala 61:23]
  assign io_o_pc_next = o_pc_next; // @[src/main/scala/wbu/wbu.scala 52:18]
  assign io_o_rd_wdata = io_i_res; // @[src/main/scala/wbu/wbu.scala 38:17]
  assign io_o_csr_rd_wdata = io_i_res; // @[src/main/scala/wbu/wbu.scala 39:21]
  assign io_o_wbu_wen = io_i_wen; // @[src/main/scala/wbu/wbu.scala 40:16]
  assign io_o_wbu_csr_wen = io_i_csr_wen; // @[src/main/scala/wbu/wbu.scala 41:20]
  assign io_o_rd_addr = io_i_rd_addr; // @[src/main/scala/wbu/wbu.scala 42:16]
  assign io_o_csr_addr = io_i_csr_addr; // @[src/main/scala/wbu/wbu.scala 43:17]
  assign io_o_pc_update = o_pc_update; // @[src/main/scala/wbu/wbu.scala 51:18]
  assign io_diff = diff; // @[src/main/scala/wbu/wbu.scala 63:13]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/wbu/wbu.scala 46:28]
      o_pc_update <= 1'h0; // @[src/main/scala/wbu/wbu.scala 46:28]
    end else if (~io_o_pc_update) begin // @[src/main/scala/wbu/wbu.scala 54:25]
      o_pc_update <= io_i_jal | io_i_jalr | io_i_brch | io_i_ecall | io_i_mret; // @[src/main/scala/wbu/wbu.scala 55:17]
    end else if (io_o_pc_update) begin // @[src/main/scala/wbu/wbu.scala 56:31]
      o_pc_update <= 1'h0; // @[src/main/scala/wbu/wbu.scala 57:17]
    end
    if (reset) begin // @[src/main/scala/wbu/wbu.scala 47:26]
      o_pc_next <= 32'h0; // @[src/main/scala/wbu/wbu.scala 47:26]
    end else begin
      o_pc_next <= io_i_pc_next; // @[src/main/scala/wbu/wbu.scala 66:13]
    end
    if (reset) begin // @[src/main/scala/wbu/wbu.scala 61:23]
      diff <= 1'h0; // @[src/main/scala/wbu/wbu.scala 61:23]
    end else begin
      diff <= io_next; // @[src/main/scala/wbu/wbu.scala 62:10]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  o_pc_update = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  o_pc_next = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  diff = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CpuCore(
  input         clock,
  input         reset,
  output [31:0] io_io_master_AXI_AWADDR, // @[src/main/scala/cpu.scala 9:14]
  output        io_io_master_AXI_AWVALID, // @[src/main/scala/cpu.scala 9:14]
  input         io_io_master_AXI_AWREADY, // @[src/main/scala/cpu.scala 9:14]
  output [2:0]  io_io_master_AXI_AWSIZE, // @[src/main/scala/cpu.scala 9:14]
  output        io_io_master_AXI_WVALID, // @[src/main/scala/cpu.scala 9:14]
  input         io_io_master_AXI_WREADY, // @[src/main/scala/cpu.scala 9:14]
  output [31:0] io_io_master_AXI_WDATA, // @[src/main/scala/cpu.scala 9:14]
  output [3:0]  io_io_master_AXI_WSTRB, // @[src/main/scala/cpu.scala 9:14]
  output        io_io_master_AXI_WLAST, // @[src/main/scala/cpu.scala 9:14]
  input  [31:0] io_io_master_AXI_RDATA, // @[src/main/scala/cpu.scala 9:14]
  input         io_io_master_AXI_RVALID, // @[src/main/scala/cpu.scala 9:14]
  output        io_io_master_AXI_RREADY, // @[src/main/scala/cpu.scala 9:14]
  input  [3:0]  io_io_master_AXI_RID, // @[src/main/scala/cpu.scala 9:14]
  input         io_io_master_AXI_RLAST, // @[src/main/scala/cpu.scala 9:14]
  output [31:0] io_io_master_AXI_ARADDR, // @[src/main/scala/cpu.scala 9:14]
  output        io_io_master_AXI_ARVALID, // @[src/main/scala/cpu.scala 9:14]
  input         io_io_master_AXI_ARREADY, // @[src/main/scala/cpu.scala 9:14]
  output [3:0]  io_io_master_AXI_ARID, // @[src/main/scala/cpu.scala 9:14]
  output [7:0]  io_io_master_AXI_ARLEN, // @[src/main/scala/cpu.scala 9:14]
  output [2:0]  io_io_master_AXI_ARSIZE, // @[src/main/scala/cpu.scala 9:14]
  output [1:0]  io_io_master_AXI_ARBURST, // @[src/main/scala/cpu.scala 9:14]
  input         io_io_master_AXI_BVALID, // @[src/main/scala/cpu.scala 9:14]
  output        io_io_master_AXI_BREADY, // @[src/main/scala/cpu.scala 9:14]
  output        io_flush, // @[src/main/scala/cpu.scala 9:14]
  output        io_ebreak, // @[src/main/scala/cpu.scala 9:14]
  output        io_diff // @[src/main/scala/cpu.scala 9:14]
);
  wire  regfile_clock; // @[src/main/scala/cpu.scala 104:23]
  wire [31:0] regfile_io_wdata; // @[src/main/scala/cpu.scala 104:23]
  wire [3:0] regfile_io_waddr; // @[src/main/scala/cpu.scala 104:23]
  wire [3:0] regfile_io_exu_rd; // @[src/main/scala/cpu.scala 104:23]
  wire [31:0] regfile_io_exu_wdata; // @[src/main/scala/cpu.scala 104:23]
  wire  regfile_io_exu_wen; // @[src/main/scala/cpu.scala 104:23]
  wire [3:0] regfile_io_wbu_rd; // @[src/main/scala/cpu.scala 104:23]
  wire [31:0] regfile_io_wbu_wdata; // @[src/main/scala/cpu.scala 104:23]
  wire  regfile_io_wbu_wen; // @[src/main/scala/cpu.scala 104:23]
  wire [3:0] regfile_io_raddr1; // @[src/main/scala/cpu.scala 104:23]
  wire [3:0] regfile_io_raddr2; // @[src/main/scala/cpu.scala 104:23]
  wire [31:0] regfile_io_rdata1; // @[src/main/scala/cpu.scala 104:23]
  wire [31:0] regfile_io_rdata2; // @[src/main/scala/cpu.scala 104:23]
  wire  regfile_io_wen; // @[src/main/scala/cpu.scala 104:23]
  wire  Csrs_clock; // @[src/main/scala/cpu.scala 123:20]
  wire  Csrs_reset; // @[src/main/scala/cpu.scala 123:20]
  wire  Csrs_io_i_csr_wen; // @[src/main/scala/cpu.scala 123:20]
  wire  Csrs_io_i_ecall; // @[src/main/scala/cpu.scala 123:20]
  wire  Csrs_io_i_mret; // @[src/main/scala/cpu.scala 123:20]
  wire [31:0] Csrs_io_i_pc; // @[src/main/scala/cpu.scala 123:20]
  wire [11:0] Csrs_io_i_csr_raddr; // @[src/main/scala/cpu.scala 123:20]
  wire [31:0] Csrs_io_o_csr_rdata; // @[src/main/scala/cpu.scala 123:20]
  wire [11:0] Csrs_io_i_csr_waddr; // @[src/main/scala/cpu.scala 123:20]
  wire [31:0] Csrs_io_i_csr_wdata; // @[src/main/scala/cpu.scala 123:20]
  wire [31:0] Csrs_io_o_mepc; // @[src/main/scala/cpu.scala 123:20]
  wire [31:0] Csrs_io_o_mtvec; // @[src/main/scala/cpu.scala 123:20]
  wire  xbar_clock; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_reset; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_ifu_AXI_RDATA; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_ifu_AXI_RVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_ifu_AXI_RREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [3:0] xbar_io_ifu_AXI_RID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_ifu_AXI_RLAST; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_ifu_AXI_ARADDR; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_ifu_AXI_ARVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_ifu_AXI_ARREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_lsu_AXI_AWADDR; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_AWVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_AWREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [2:0] xbar_io_lsu_AXI_AWSIZE; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_WVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_WREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_lsu_AXI_WDATA; // @[src/main/scala/cpu.scala 136:23]
  wire [3:0] xbar_io_lsu_AXI_WSTRB; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_lsu_AXI_RDATA; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_RVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_RREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [3:0] xbar_io_lsu_AXI_RID; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_lsu_AXI_ARADDR; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_ARVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_ARREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [2:0] xbar_io_lsu_AXI_ARSIZE; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_BVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_lsu_AXI_BREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_sram_AXI_AWADDR; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_AWVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_AWREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [2:0] xbar_io_sram_AXI_AWSIZE; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_WVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_WREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_sram_AXI_WDATA; // @[src/main/scala/cpu.scala 136:23]
  wire [3:0] xbar_io_sram_AXI_WSTRB; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_WLAST; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_sram_AXI_RDATA; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_RVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_RREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [3:0] xbar_io_sram_AXI_RID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_RLAST; // @[src/main/scala/cpu.scala 136:23]
  wire [31:0] xbar_io_sram_AXI_ARADDR; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_ARVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_ARREADY; // @[src/main/scala/cpu.scala 136:23]
  wire [3:0] xbar_io_sram_AXI_ARID; // @[src/main/scala/cpu.scala 136:23]
  wire [7:0] xbar_io_sram_AXI_ARLEN; // @[src/main/scala/cpu.scala 136:23]
  wire [2:0] xbar_io_sram_AXI_ARSIZE; // @[src/main/scala/cpu.scala 136:23]
  wire [1:0] xbar_io_sram_AXI_ARBURST; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_BVALID; // @[src/main/scala/cpu.scala 136:23]
  wire  xbar_io_sram_AXI_BREADY; // @[src/main/scala/cpu.scala 136:23]
  wire  ifu_clock; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_reset; // @[src/main/scala/cpu.scala 137:19]
  wire [31:0] ifu_io_i_pc_next; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_flush; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_i_post_ready; // @[src/main/scala/cpu.scala 137:19]
  wire [31:0] ifu_io_o_ins; // @[src/main/scala/cpu.scala 137:19]
  wire [31:0] ifu_io_o_pc; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_hit; // @[src/main/scala/cpu.scala 137:19]
  wire [31:0] ifu_io_ifu_AXI_RDATA; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_ifu_AXI_RVALID; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_ifu_AXI_RREADY; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_ifu_AXI_RLAST; // @[src/main/scala/cpu.scala 137:19]
  wire [31:0] ifu_io_ifu_AXI_ARADDR; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_ifu_AXI_ARVALID; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu_io_ifu_AXI_ARREADY; // @[src/main/scala/cpu.scala 137:19]
  wire  ifu2idu_regs_clock; // @[src/main/scala/cpu.scala 139:11]
  wire  ifu2idu_regs_reset; // @[src/main/scala/cpu.scala 139:11]
  wire [31:0] ifu2idu_regs_io_i_pc; // @[src/main/scala/cpu.scala 139:11]
  wire [31:0] ifu2idu_regs_io_i_ins; // @[src/main/scala/cpu.scala 139:11]
  wire [31:0] ifu2idu_regs_io_o_pc; // @[src/main/scala/cpu.scala 139:11]
  wire [31:0] ifu2idu_regs_io_o_ins; // @[src/main/scala/cpu.scala 139:11]
  wire  ifu2idu_regs_io_i_hit; // @[src/main/scala/cpu.scala 139:11]
  wire  ifu2idu_regs_io_i_post_ready; // @[src/main/scala/cpu.scala 139:11]
  wire  ifu2idu_regs_io_o_post_valid; // @[src/main/scala/cpu.scala 139:11]
  wire [31:0] idu1_io_ins; // @[src/main/scala/cpu.scala 156:20]
  wire [31:0] idu1_io_o_imm; // @[src/main/scala/cpu.scala 156:20]
  wire [4:0] idu1_io_o_rd; // @[src/main/scala/cpu.scala 156:20]
  wire [4:0] idu1_io_o_rs1; // @[src/main/scala/cpu.scala 156:20]
  wire [4:0] idu1_io_o_rs2; // @[src/main/scala/cpu.scala 156:20]
  wire [11:0] idu1_io_o_csr_addr; // @[src/main/scala/cpu.scala 156:20]
  wire [2:0] idu1_io_o_exu_opt; // @[src/main/scala/cpu.scala 156:20]
  wire [9:0] idu1_io_o_alu_opt; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_wen; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_csr_wen; // @[src/main/scala/cpu.scala 156:20]
  wire [1:0] idu1_io_o_src_sel1; // @[src/main/scala/cpu.scala 156:20]
  wire [2:0] idu1_io_o_src_sel2; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_mret; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_ecall; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_load; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_store; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_brch; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_jal; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_jalr; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_ebreak; // @[src/main/scala/cpu.scala 156:20]
  wire  idu1_io_o_fence_i; // @[src/main/scala/cpu.scala 156:20]
  wire  idu2exu_regs_clock; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_reset; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_i_pc; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_pre_valid; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_post_ready; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_i_imm; // @[src/main/scala/cpu.scala 180:11]
  wire [11:0] idu2exu_regs_io_i_csr_addr; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_i_src1; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_i_src2; // @[src/main/scala/cpu.scala 180:11]
  wire [3:0] idu2exu_regs_io_i_rd; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_i_csr_rs2; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_csr_src_sel; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_i_mepc; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_i_mtvec; // @[src/main/scala/cpu.scala 180:11]
  wire [2:0] idu2exu_regs_io_i_exu_opt; // @[src/main/scala/cpu.scala 180:11]
  wire [9:0] idu2exu_regs_io_i_alu_opt; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_wen; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_csr_wen; // @[src/main/scala/cpu.scala 180:11]
  wire [1:0] idu2exu_regs_io_i_src_sel1; // @[src/main/scala/cpu.scala 180:11]
  wire [2:0] idu2exu_regs_io_i_src_sel2; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_mret; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_ecall; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_load; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_store; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_brch; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_jal; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_jalr; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_fence_i; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_i_ebreak; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_out_pc; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_out_src1; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_out_src2; // @[src/main/scala/cpu.scala 180:11]
  wire [31:0] idu2exu_regs_io_out_imm; // @[src/main/scala/cpu.scala 180:11]
  wire [1:0] idu2exu_regs_io_out_src_sel1; // @[src/main/scala/cpu.scala 180:11]
  wire [2:0] idu2exu_regs_io_out_src_sel2; // @[src/main/scala/cpu.scala 180:11]
  wire [3:0] idu2exu_regs_io_out_rd; // @[src/main/scala/cpu.scala 180:11]
  wire [2:0] idu2exu_regs_io_out_exu_opt; // @[src/main/scala/cpu.scala 180:11]
  wire [9:0] idu2exu_regs_io_out_alu_opt; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_wen; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_csr_wen; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_mret; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_ecall; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_load; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_store; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_brch; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_jal; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_jalr; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_fence_i; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_out_ebreak; // @[src/main/scala/cpu.scala 180:11]
  wire [11:0] idu2exu_regs_io_out_csr_addr; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_pre_ready; // @[src/main/scala/cpu.scala 180:11]
  wire  idu2exu_regs_io_post_valid; // @[src/main/scala/cpu.scala 180:11]
  wire  exu_clock; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_reset; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_i_src1; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_i_src2; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_i_pc; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_i_imm; // @[src/main/scala/cpu.scala 237:19]
  wire [1:0] exu_io_i_src_sel1; // @[src/main/scala/cpu.scala 237:19]
  wire [2:0] exu_io_i_src_sel2; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_load; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_store; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_brch; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_jal; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_jalr; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_ecall; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_mret; // @[src/main/scala/cpu.scala 237:19]
  wire [9:0] exu_io_i_alu_opt; // @[src/main/scala/cpu.scala 237:19]
  wire [2:0] exu_io_exu_opt; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_o_res; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_o_brch; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_o_pc_next; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_lsu_AXI_AWADDR; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_AWVALID; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_AWREADY; // @[src/main/scala/cpu.scala 237:19]
  wire [2:0] exu_io_lsu_AXI_AWSIZE; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_WVALID; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_WREADY; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_lsu_AXI_WDATA; // @[src/main/scala/cpu.scala 237:19]
  wire [3:0] exu_io_lsu_AXI_WSTRB; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_lsu_AXI_RDATA; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_RVALID; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_RREADY; // @[src/main/scala/cpu.scala 237:19]
  wire [31:0] exu_io_lsu_AXI_ARADDR; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_ARVALID; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_ARREADY; // @[src/main/scala/cpu.scala 237:19]
  wire [2:0] exu_io_lsu_AXI_ARSIZE; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_BVALID; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_lsu_AXI_BREADY; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_i_pre_valid; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_o_post_valid; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_io_o_pre_ready; // @[src/main/scala/cpu.scala 237:19]
  wire  exu_wbu_regs_clock; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_reset; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_brch; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_jal; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_wen; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_csr_wen; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_jalr; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_ebreak; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_mret; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_i_ecall; // @[src/main/scala/cpu.scala 265:11]
  wire [31:0] exu_wbu_regs_io_i_res; // @[src/main/scala/cpu.scala 265:11]
  wire [31:0] exu_wbu_regs_io_i_pc_next; // @[src/main/scala/cpu.scala 265:11]
  wire [11:0] exu_wbu_regs_io_i_csr_addr; // @[src/main/scala/cpu.scala 265:11]
  wire [4:0] exu_wbu_regs_io_i_rd_addr; // @[src/main/scala/cpu.scala 265:11]
  wire [31:0] exu_wbu_regs_io_o_pc_next; // @[src/main/scala/cpu.scala 265:11]
  wire [11:0] exu_wbu_regs_io_o_csr_addr; // @[src/main/scala/cpu.scala 265:11]
  wire [4:0] exu_wbu_regs_io_o_rd_addr; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_wen; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_csr_wen; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_brch; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_jal; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_jalr; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_mret; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_ecall; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_ebreak; // @[src/main/scala/cpu.scala 265:11]
  wire [31:0] exu_wbu_regs_io_o_res; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_o_post_valid; // @[src/main/scala/cpu.scala 265:11]
  wire  exu_wbu_regs_io_next; // @[src/main/scala/cpu.scala 265:11]
  wire  wbu_clock; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_reset; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_i_wen; // @[src/main/scala/cpu.scala 298:19]
  wire [4:0] wbu_io_i_rd_addr; // @[src/main/scala/cpu.scala 298:19]
  wire [11:0] wbu_io_i_csr_addr; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_i_csr_wen; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_i_brch; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_i_jal; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_i_jalr; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_i_mret; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_i_ecall; // @[src/main/scala/cpu.scala 298:19]
  wire [31:0] wbu_io_i_pc_next; // @[src/main/scala/cpu.scala 298:19]
  wire [31:0] wbu_io_i_res; // @[src/main/scala/cpu.scala 298:19]
  wire [31:0] wbu_io_o_pc_next; // @[src/main/scala/cpu.scala 298:19]
  wire [31:0] wbu_io_o_rd_wdata; // @[src/main/scala/cpu.scala 298:19]
  wire [31:0] wbu_io_o_csr_rd_wdata; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_o_wbu_wen; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_o_wbu_csr_wen; // @[src/main/scala/cpu.scala 298:19]
  wire [4:0] wbu_io_o_rd_addr; // @[src/main/scala/cpu.scala 298:19]
  wire [11:0] wbu_io_o_csr_addr; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_o_pc_update; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_next; // @[src/main/scala/cpu.scala 298:19]
  wire  wbu_io_diff; // @[src/main/scala/cpu.scala 298:19]
  wire  pc_update_en = wbu_io_o_pc_update; // @[src/main/scala/cpu.scala 319:21 54:26]
  wire  _T_1 = reset | pc_update_en; // @[src/main/scala/cpu.scala 138:46]
  wire  idu2exu_fence_i = idu2exu_regs_io_out_fence_i; // @[src/main/scala/cpu.scala 233:25 87:29]
  wire [4:0] idu_addr_rs1 = idu1_io_o_rs1; // @[src/main/scala/cpu.scala 160:17 22:26]
  wire [4:0] idu_addr_rs2 = idu1_io_o_rs2; // @[src/main/scala/cpu.scala 161:17 23:26]
  wire [4:0] idu_addr_rd = idu1_io_o_rd; // @[src/main/scala/cpu.scala 159:17 24:25]
  wire [4:0] wbu_rd_addr = wbu_io_o_rd_addr; // @[src/main/scala/cpu.scala 321:21 65:35]
  wire [3:0] idu2exu_rd = idu2exu_regs_io_out_rd; // @[src/main/scala/cpu.scala 74:24 220:25]
  wire [3:0] exu2wbu_rd_addr = exu_wbu_regs_io_o_rd_addr[3:0]; // @[src/main/scala/cpu.scala 285:22 92:29]
  RegisterFile regfile ( // @[src/main/scala/cpu.scala 104:23]
    .clock(regfile_clock),
    .io_wdata(regfile_io_wdata),
    .io_waddr(regfile_io_waddr),
    .io_exu_rd(regfile_io_exu_rd),
    .io_exu_wdata(regfile_io_exu_wdata),
    .io_exu_wen(regfile_io_exu_wen),
    .io_wbu_rd(regfile_io_wbu_rd),
    .io_wbu_wdata(regfile_io_wbu_wdata),
    .io_wbu_wen(regfile_io_wbu_wen),
    .io_raddr1(regfile_io_raddr1),
    .io_raddr2(regfile_io_raddr2),
    .io_rdata1(regfile_io_rdata1),
    .io_rdata2(regfile_io_rdata2),
    .io_wen(regfile_io_wen)
  );
  CSR Csrs ( // @[src/main/scala/cpu.scala 123:20]
    .clock(Csrs_clock),
    .reset(Csrs_reset),
    .io_i_csr_wen(Csrs_io_i_csr_wen),
    .io_i_ecall(Csrs_io_i_ecall),
    .io_i_mret(Csrs_io_i_mret),
    .io_i_pc(Csrs_io_i_pc),
    .io_i_csr_raddr(Csrs_io_i_csr_raddr),
    .io_o_csr_rdata(Csrs_io_o_csr_rdata),
    .io_i_csr_waddr(Csrs_io_i_csr_waddr),
    .io_i_csr_wdata(Csrs_io_i_csr_wdata),
    .io_o_mepc(Csrs_io_o_mepc),
    .io_o_mtvec(Csrs_io_o_mtvec)
  );
  Xbar xbar ( // @[src/main/scala/cpu.scala 136:23]
    .clock(xbar_clock),
    .reset(xbar_reset),
    .io_ifu_AXI_RDATA(xbar_io_ifu_AXI_RDATA),
    .io_ifu_AXI_RVALID(xbar_io_ifu_AXI_RVALID),
    .io_ifu_AXI_RREADY(xbar_io_ifu_AXI_RREADY),
    .io_ifu_AXI_RID(xbar_io_ifu_AXI_RID),
    .io_ifu_AXI_RLAST(xbar_io_ifu_AXI_RLAST),
    .io_ifu_AXI_ARADDR(xbar_io_ifu_AXI_ARADDR),
    .io_ifu_AXI_ARVALID(xbar_io_ifu_AXI_ARVALID),
    .io_ifu_AXI_ARREADY(xbar_io_ifu_AXI_ARREADY),
    .io_lsu_AXI_AWADDR(xbar_io_lsu_AXI_AWADDR),
    .io_lsu_AXI_AWVALID(xbar_io_lsu_AXI_AWVALID),
    .io_lsu_AXI_AWREADY(xbar_io_lsu_AXI_AWREADY),
    .io_lsu_AXI_AWSIZE(xbar_io_lsu_AXI_AWSIZE),
    .io_lsu_AXI_WVALID(xbar_io_lsu_AXI_WVALID),
    .io_lsu_AXI_WREADY(xbar_io_lsu_AXI_WREADY),
    .io_lsu_AXI_WDATA(xbar_io_lsu_AXI_WDATA),
    .io_lsu_AXI_WSTRB(xbar_io_lsu_AXI_WSTRB),
    .io_lsu_AXI_RDATA(xbar_io_lsu_AXI_RDATA),
    .io_lsu_AXI_RVALID(xbar_io_lsu_AXI_RVALID),
    .io_lsu_AXI_RREADY(xbar_io_lsu_AXI_RREADY),
    .io_lsu_AXI_RID(xbar_io_lsu_AXI_RID),
    .io_lsu_AXI_ARADDR(xbar_io_lsu_AXI_ARADDR),
    .io_lsu_AXI_ARVALID(xbar_io_lsu_AXI_ARVALID),
    .io_lsu_AXI_ARREADY(xbar_io_lsu_AXI_ARREADY),
    .io_lsu_AXI_ARSIZE(xbar_io_lsu_AXI_ARSIZE),
    .io_lsu_AXI_BVALID(xbar_io_lsu_AXI_BVALID),
    .io_lsu_AXI_BREADY(xbar_io_lsu_AXI_BREADY),
    .io_sram_AXI_AWADDR(xbar_io_sram_AXI_AWADDR),
    .io_sram_AXI_AWVALID(xbar_io_sram_AXI_AWVALID),
    .io_sram_AXI_AWREADY(xbar_io_sram_AXI_AWREADY),
    .io_sram_AXI_AWSIZE(xbar_io_sram_AXI_AWSIZE),
    .io_sram_AXI_WVALID(xbar_io_sram_AXI_WVALID),
    .io_sram_AXI_WREADY(xbar_io_sram_AXI_WREADY),
    .io_sram_AXI_WDATA(xbar_io_sram_AXI_WDATA),
    .io_sram_AXI_WSTRB(xbar_io_sram_AXI_WSTRB),
    .io_sram_AXI_WLAST(xbar_io_sram_AXI_WLAST),
    .io_sram_AXI_RDATA(xbar_io_sram_AXI_RDATA),
    .io_sram_AXI_RVALID(xbar_io_sram_AXI_RVALID),
    .io_sram_AXI_RREADY(xbar_io_sram_AXI_RREADY),
    .io_sram_AXI_RID(xbar_io_sram_AXI_RID),
    .io_sram_AXI_RLAST(xbar_io_sram_AXI_RLAST),
    .io_sram_AXI_ARADDR(xbar_io_sram_AXI_ARADDR),
    .io_sram_AXI_ARVALID(xbar_io_sram_AXI_ARVALID),
    .io_sram_AXI_ARREADY(xbar_io_sram_AXI_ARREADY),
    .io_sram_AXI_ARID(xbar_io_sram_AXI_ARID),
    .io_sram_AXI_ARLEN(xbar_io_sram_AXI_ARLEN),
    .io_sram_AXI_ARSIZE(xbar_io_sram_AXI_ARSIZE),
    .io_sram_AXI_ARBURST(xbar_io_sram_AXI_ARBURST),
    .io_sram_AXI_BVALID(xbar_io_sram_AXI_BVALID),
    .io_sram_AXI_BREADY(xbar_io_sram_AXI_BREADY)
  );
  IFU ifu ( // @[src/main/scala/cpu.scala 137:19]
    .clock(ifu_clock),
    .reset(ifu_reset),
    .io_i_pc_next(ifu_io_i_pc_next),
    .io_flush(ifu_io_flush),
    .io_i_post_ready(ifu_io_i_post_ready),
    .io_o_ins(ifu_io_o_ins),
    .io_o_pc(ifu_io_o_pc),
    .io_hit(ifu_io_hit),
    .io_ifu_AXI_RDATA(ifu_io_ifu_AXI_RDATA),
    .io_ifu_AXI_RVALID(ifu_io_ifu_AXI_RVALID),
    .io_ifu_AXI_RREADY(ifu_io_ifu_AXI_RREADY),
    .io_ifu_AXI_RLAST(ifu_io_ifu_AXI_RLAST),
    .io_ifu_AXI_ARADDR(ifu_io_ifu_AXI_ARADDR),
    .io_ifu_AXI_ARVALID(ifu_io_ifu_AXI_ARVALID),
    .io_ifu_AXI_ARREADY(ifu_io_ifu_AXI_ARREADY)
  );
  IFU2IDURegs ifu2idu_regs ( // @[src/main/scala/cpu.scala 139:11]
    .clock(ifu2idu_regs_clock),
    .reset(ifu2idu_regs_reset),
    .io_i_pc(ifu2idu_regs_io_i_pc),
    .io_i_ins(ifu2idu_regs_io_i_ins),
    .io_o_pc(ifu2idu_regs_io_o_pc),
    .io_o_ins(ifu2idu_regs_io_o_ins),
    .io_i_hit(ifu2idu_regs_io_i_hit),
    .io_i_post_ready(ifu2idu_regs_io_i_post_ready),
    .io_o_post_valid(ifu2idu_regs_io_o_post_valid)
  );
  IDU idu1 ( // @[src/main/scala/cpu.scala 156:20]
    .io_ins(idu1_io_ins),
    .io_o_imm(idu1_io_o_imm),
    .io_o_rd(idu1_io_o_rd),
    .io_o_rs1(idu1_io_o_rs1),
    .io_o_rs2(idu1_io_o_rs2),
    .io_o_csr_addr(idu1_io_o_csr_addr),
    .io_o_exu_opt(idu1_io_o_exu_opt),
    .io_o_alu_opt(idu1_io_o_alu_opt),
    .io_o_wen(idu1_io_o_wen),
    .io_o_csr_wen(idu1_io_o_csr_wen),
    .io_o_src_sel1(idu1_io_o_src_sel1),
    .io_o_src_sel2(idu1_io_o_src_sel2),
    .io_o_mret(idu1_io_o_mret),
    .io_o_ecall(idu1_io_o_ecall),
    .io_o_load(idu1_io_o_load),
    .io_o_store(idu1_io_o_store),
    .io_o_brch(idu1_io_o_brch),
    .io_o_jal(idu1_io_o_jal),
    .io_o_jalr(idu1_io_o_jalr),
    .io_o_ebreak(idu1_io_o_ebreak),
    .io_o_fence_i(idu1_io_o_fence_i)
  );
  IDU_EXU_Regs idu2exu_regs ( // @[src/main/scala/cpu.scala 180:11]
    .clock(idu2exu_regs_clock),
    .reset(idu2exu_regs_reset),
    .io_i_pc(idu2exu_regs_io_i_pc),
    .io_i_pre_valid(idu2exu_regs_io_i_pre_valid),
    .io_i_post_ready(idu2exu_regs_io_i_post_ready),
    .io_i_imm(idu2exu_regs_io_i_imm),
    .io_i_csr_addr(idu2exu_regs_io_i_csr_addr),
    .io_i_src1(idu2exu_regs_io_i_src1),
    .io_i_src2(idu2exu_regs_io_i_src2),
    .io_i_rd(idu2exu_regs_io_i_rd),
    .io_i_csr_rs2(idu2exu_regs_io_i_csr_rs2),
    .io_i_csr_src_sel(idu2exu_regs_io_i_csr_src_sel),
    .io_i_mepc(idu2exu_regs_io_i_mepc),
    .io_i_mtvec(idu2exu_regs_io_i_mtvec),
    .io_i_exu_opt(idu2exu_regs_io_i_exu_opt),
    .io_i_alu_opt(idu2exu_regs_io_i_alu_opt),
    .io_i_wen(idu2exu_regs_io_i_wen),
    .io_i_csr_wen(idu2exu_regs_io_i_csr_wen),
    .io_i_src_sel1(idu2exu_regs_io_i_src_sel1),
    .io_i_src_sel2(idu2exu_regs_io_i_src_sel2),
    .io_i_mret(idu2exu_regs_io_i_mret),
    .io_i_ecall(idu2exu_regs_io_i_ecall),
    .io_i_load(idu2exu_regs_io_i_load),
    .io_i_store(idu2exu_regs_io_i_store),
    .io_i_brch(idu2exu_regs_io_i_brch),
    .io_i_jal(idu2exu_regs_io_i_jal),
    .io_i_jalr(idu2exu_regs_io_i_jalr),
    .io_i_fence_i(idu2exu_regs_io_i_fence_i),
    .io_i_ebreak(idu2exu_regs_io_i_ebreak),
    .io_out_pc(idu2exu_regs_io_out_pc),
    .io_out_src1(idu2exu_regs_io_out_src1),
    .io_out_src2(idu2exu_regs_io_out_src2),
    .io_out_imm(idu2exu_regs_io_out_imm),
    .io_out_src_sel1(idu2exu_regs_io_out_src_sel1),
    .io_out_src_sel2(idu2exu_regs_io_out_src_sel2),
    .io_out_rd(idu2exu_regs_io_out_rd),
    .io_out_exu_opt(idu2exu_regs_io_out_exu_opt),
    .io_out_alu_opt(idu2exu_regs_io_out_alu_opt),
    .io_out_wen(idu2exu_regs_io_out_wen),
    .io_out_csr_wen(idu2exu_regs_io_out_csr_wen),
    .io_out_mret(idu2exu_regs_io_out_mret),
    .io_out_ecall(idu2exu_regs_io_out_ecall),
    .io_out_load(idu2exu_regs_io_out_load),
    .io_out_store(idu2exu_regs_io_out_store),
    .io_out_brch(idu2exu_regs_io_out_brch),
    .io_out_jal(idu2exu_regs_io_out_jal),
    .io_out_jalr(idu2exu_regs_io_out_jalr),
    .io_out_fence_i(idu2exu_regs_io_out_fence_i),
    .io_out_ebreak(idu2exu_regs_io_out_ebreak),
    .io_out_csr_addr(idu2exu_regs_io_out_csr_addr),
    .io_pre_ready(idu2exu_regs_io_pre_ready),
    .io_post_valid(idu2exu_regs_io_post_valid)
  );
  EXU exu ( // @[src/main/scala/cpu.scala 237:19]
    .clock(exu_clock),
    .reset(exu_reset),
    .io_i_src1(exu_io_i_src1),
    .io_i_src2(exu_io_i_src2),
    .io_i_pc(exu_io_i_pc),
    .io_i_imm(exu_io_i_imm),
    .io_i_src_sel1(exu_io_i_src_sel1),
    .io_i_src_sel2(exu_io_i_src_sel2),
    .io_i_load(exu_io_i_load),
    .io_i_store(exu_io_i_store),
    .io_i_brch(exu_io_i_brch),
    .io_i_jal(exu_io_i_jal),
    .io_i_jalr(exu_io_i_jalr),
    .io_i_ecall(exu_io_i_ecall),
    .io_i_mret(exu_io_i_mret),
    .io_i_alu_opt(exu_io_i_alu_opt),
    .io_exu_opt(exu_io_exu_opt),
    .io_o_res(exu_io_o_res),
    .io_o_brch(exu_io_o_brch),
    .io_o_pc_next(exu_io_o_pc_next),
    .io_lsu_AXI_AWADDR(exu_io_lsu_AXI_AWADDR),
    .io_lsu_AXI_AWVALID(exu_io_lsu_AXI_AWVALID),
    .io_lsu_AXI_AWREADY(exu_io_lsu_AXI_AWREADY),
    .io_lsu_AXI_AWSIZE(exu_io_lsu_AXI_AWSIZE),
    .io_lsu_AXI_WVALID(exu_io_lsu_AXI_WVALID),
    .io_lsu_AXI_WREADY(exu_io_lsu_AXI_WREADY),
    .io_lsu_AXI_WDATA(exu_io_lsu_AXI_WDATA),
    .io_lsu_AXI_WSTRB(exu_io_lsu_AXI_WSTRB),
    .io_lsu_AXI_RDATA(exu_io_lsu_AXI_RDATA),
    .io_lsu_AXI_RVALID(exu_io_lsu_AXI_RVALID),
    .io_lsu_AXI_RREADY(exu_io_lsu_AXI_RREADY),
    .io_lsu_AXI_ARADDR(exu_io_lsu_AXI_ARADDR),
    .io_lsu_AXI_ARVALID(exu_io_lsu_AXI_ARVALID),
    .io_lsu_AXI_ARREADY(exu_io_lsu_AXI_ARREADY),
    .io_lsu_AXI_ARSIZE(exu_io_lsu_AXI_ARSIZE),
    .io_lsu_AXI_BVALID(exu_io_lsu_AXI_BVALID),
    .io_lsu_AXI_BREADY(exu_io_lsu_AXI_BREADY),
    .io_i_pre_valid(exu_io_i_pre_valid),
    .io_o_post_valid(exu_io_o_post_valid),
    .io_o_pre_ready(exu_io_o_pre_ready)
  );
  EXU_WBU_Regs exu_wbu_regs ( // @[src/main/scala/cpu.scala 265:11]
    .clock(exu_wbu_regs_clock),
    .reset(exu_wbu_regs_reset),
    .io_i_brch(exu_wbu_regs_io_i_brch),
    .io_i_jal(exu_wbu_regs_io_i_jal),
    .io_i_wen(exu_wbu_regs_io_i_wen),
    .io_i_csr_wen(exu_wbu_regs_io_i_csr_wen),
    .io_i_jalr(exu_wbu_regs_io_i_jalr),
    .io_i_ebreak(exu_wbu_regs_io_i_ebreak),
    .io_i_mret(exu_wbu_regs_io_i_mret),
    .io_i_ecall(exu_wbu_regs_io_i_ecall),
    .io_i_res(exu_wbu_regs_io_i_res),
    .io_i_pc_next(exu_wbu_regs_io_i_pc_next),
    .io_i_csr_addr(exu_wbu_regs_io_i_csr_addr),
    .io_i_rd_addr(exu_wbu_regs_io_i_rd_addr),
    .io_o_pc_next(exu_wbu_regs_io_o_pc_next),
    .io_o_csr_addr(exu_wbu_regs_io_o_csr_addr),
    .io_o_rd_addr(exu_wbu_regs_io_o_rd_addr),
    .io_o_wen(exu_wbu_regs_io_o_wen),
    .io_o_csr_wen(exu_wbu_regs_io_o_csr_wen),
    .io_o_brch(exu_wbu_regs_io_o_brch),
    .io_o_jal(exu_wbu_regs_io_o_jal),
    .io_o_jalr(exu_wbu_regs_io_o_jalr),
    .io_o_mret(exu_wbu_regs_io_o_mret),
    .io_o_ecall(exu_wbu_regs_io_o_ecall),
    .io_o_ebreak(exu_wbu_regs_io_o_ebreak),
    .io_o_res(exu_wbu_regs_io_o_res),
    .io_o_post_valid(exu_wbu_regs_io_o_post_valid),
    .io_next(exu_wbu_regs_io_next)
  );
  WBU wbu ( // @[src/main/scala/cpu.scala 298:19]
    .clock(wbu_clock),
    .reset(wbu_reset),
    .io_i_wen(wbu_io_i_wen),
    .io_i_rd_addr(wbu_io_i_rd_addr),
    .io_i_csr_addr(wbu_io_i_csr_addr),
    .io_i_csr_wen(wbu_io_i_csr_wen),
    .io_i_brch(wbu_io_i_brch),
    .io_i_jal(wbu_io_i_jal),
    .io_i_jalr(wbu_io_i_jalr),
    .io_i_mret(wbu_io_i_mret),
    .io_i_ecall(wbu_io_i_ecall),
    .io_i_pc_next(wbu_io_i_pc_next),
    .io_i_res(wbu_io_i_res),
    .io_o_pc_next(wbu_io_o_pc_next),
    .io_o_rd_wdata(wbu_io_o_rd_wdata),
    .io_o_csr_rd_wdata(wbu_io_o_csr_rd_wdata),
    .io_o_wbu_wen(wbu_io_o_wbu_wen),
    .io_o_wbu_csr_wen(wbu_io_o_wbu_csr_wen),
    .io_o_rd_addr(wbu_io_o_rd_addr),
    .io_o_csr_addr(wbu_io_o_csr_addr),
    .io_o_pc_update(wbu_io_o_pc_update),
    .io_next(wbu_io_next),
    .io_diff(wbu_io_diff)
  );
  assign io_io_master_AXI_AWADDR = xbar_io_sram_AXI_AWADDR; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_AWVALID = xbar_io_sram_AXI_AWVALID; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_AWSIZE = xbar_io_sram_AXI_AWSIZE; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_WVALID = xbar_io_sram_AXI_WVALID; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_WDATA = xbar_io_sram_AXI_WDATA; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_WSTRB = xbar_io_sram_AXI_WSTRB; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_WLAST = xbar_io_sram_AXI_WLAST; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_RREADY = xbar_io_sram_AXI_RREADY; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_ARADDR = xbar_io_sram_AXI_ARADDR; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_ARVALID = xbar_io_sram_AXI_ARVALID; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_ARID = xbar_io_sram_AXI_ARID; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_ARLEN = xbar_io_sram_AXI_ARLEN; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_ARSIZE = xbar_io_sram_AXI_ARSIZE; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_ARBURST = xbar_io_sram_AXI_ARBURST; // @[src/main/scala/cpu.scala 329:16]
  assign io_io_master_AXI_BREADY = xbar_io_sram_AXI_BREADY; // @[src/main/scala/cpu.scala 329:16]
  assign io_flush = wbu_io_o_pc_update; // @[src/main/scala/cpu.scala 319:21 54:26]
  assign io_ebreak = exu_wbu_regs_io_o_ebreak; // @[src/main/scala/cpu.scala 294:22]
  assign io_diff = wbu_io_diff; // @[src/main/scala/cpu.scala 313:13]
  assign regfile_clock = clock;
  assign regfile_io_wdata = wbu_io_o_rd_wdata; // @[src/main/scala/cpu.scala 28:26 320:21]
  assign regfile_io_waddr = wbu_rd_addr[3:0]; // @[src/main/scala/cpu.scala 105:20]
  assign regfile_io_exu_rd = idu2exu_regs_io_out_rd; // @[src/main/scala/cpu.scala 74:24 220:25]
  assign regfile_io_exu_wdata = exu_io_o_res; // @[src/main/scala/cpu.scala 253:15 30:21]
  assign regfile_io_exu_wen = idu2exu_regs_io_out_wen; // @[src/main/scala/cpu.scala 223:25 77:25]
  assign regfile_io_wbu_rd = exu_wbu_regs_io_o_rd_addr[3:0]; // @[src/main/scala/cpu.scala 285:22 92:29]
  assign regfile_io_wbu_wdata = exu_wbu_regs_io_o_res; // @[src/main/scala/cpu.scala 100:25 293:22]
  assign regfile_io_wbu_wen = exu_wbu_regs_io_o_wen; // @[src/main/scala/cpu.scala 286:22 93:25]
  assign regfile_io_raddr1 = idu_addr_rs1[3:0]; // @[src/main/scala/cpu.scala 114:21]
  assign regfile_io_raddr2 = idu_addr_rs2[3:0]; // @[src/main/scala/cpu.scala 115:21]
  assign regfile_io_wen = wbu_io_o_wbu_wen; // @[src/main/scala/cpu.scala 324:21 41:21]
  assign Csrs_clock = clock;
  assign Csrs_reset = reset;
  assign Csrs_io_i_csr_wen = wbu_io_o_wbu_csr_wen; // @[src/main/scala/cpu.scala 325:21 42:25]
  assign Csrs_io_i_ecall = idu1_io_o_ecall; // @[src/main/scala/cpu.scala 169:17 52:19]
  assign Csrs_io_i_mret = idu1_io_o_mret; // @[src/main/scala/cpu.scala 170:17 53:18]
  assign Csrs_io_i_pc = ifu2idu_regs_io_o_pc; // @[src/main/scala/cpu.scala 102:35 149:33]
  assign Csrs_io_i_csr_raddr = idu1_io_o_csr_addr; // @[src/main/scala/cpu.scala 162:17 25:27]
  assign Csrs_io_i_csr_waddr = wbu_io_o_csr_addr; // @[src/main/scala/cpu.scala 322:21 66:35]
  assign Csrs_io_i_csr_wdata = wbu_io_o_csr_rd_wdata; // @[src/main/scala/cpu.scala 29:26 323:21]
  assign xbar_clock = clock;
  assign xbar_reset = reset;
  assign xbar_io_ifu_AXI_RREADY = ifu_io_ifu_AXI_RREADY; // @[src/main/scala/cpu.scala 142:14]
  assign xbar_io_ifu_AXI_ARADDR = ifu_io_ifu_AXI_ARADDR; // @[src/main/scala/cpu.scala 142:14]
  assign xbar_io_ifu_AXI_ARVALID = ifu_io_ifu_AXI_ARVALID; // @[src/main/scala/cpu.scala 142:14]
  assign xbar_io_lsu_AXI_AWADDR = exu_io_lsu_AXI_AWADDR; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_AWVALID = exu_io_lsu_AXI_AWVALID; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_AWSIZE = exu_io_lsu_AXI_AWSIZE; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_WVALID = exu_io_lsu_AXI_WVALID; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_WDATA = exu_io_lsu_AXI_WDATA; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_WSTRB = exu_io_lsu_AXI_WSTRB; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_RREADY = exu_io_lsu_AXI_RREADY; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_ARADDR = exu_io_lsu_AXI_ARADDR; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_ARVALID = exu_io_lsu_AXI_ARVALID; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_ARSIZE = exu_io_lsu_AXI_ARSIZE; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_lsu_AXI_BREADY = exu_io_lsu_AXI_BREADY; // @[src/main/scala/cpu.scala 257:15]
  assign xbar_io_sram_AXI_AWREADY = io_io_master_AXI_AWREADY; // @[src/main/scala/cpu.scala 329:16]
  assign xbar_io_sram_AXI_WREADY = io_io_master_AXI_WREADY; // @[src/main/scala/cpu.scala 329:16]
  assign xbar_io_sram_AXI_RDATA = io_io_master_AXI_RDATA; // @[src/main/scala/cpu.scala 329:16]
  assign xbar_io_sram_AXI_RVALID = io_io_master_AXI_RVALID; // @[src/main/scala/cpu.scala 329:16]
  assign xbar_io_sram_AXI_RID = io_io_master_AXI_RID; // @[src/main/scala/cpu.scala 329:16]
  assign xbar_io_sram_AXI_RLAST = io_io_master_AXI_RLAST; // @[src/main/scala/cpu.scala 329:16]
  assign xbar_io_sram_AXI_ARREADY = io_io_master_AXI_ARREADY; // @[src/main/scala/cpu.scala 329:16]
  assign xbar_io_sram_AXI_BVALID = io_io_master_AXI_BVALID; // @[src/main/scala/cpu.scala 329:16]
  assign ifu_clock = clock;
  assign ifu_reset = reset;
  assign ifu_io_i_pc_next = wbu_io_o_pc_next; // @[src/main/scala/cpu.scala 318:21 43:21]
  assign ifu_io_flush = wbu_io_o_pc_update; // @[src/main/scala/cpu.scala 319:21 54:26]
  assign ifu_io_i_post_ready = idu2exu_regs_io_pre_ready; // @[src/main/scala/cpu.scala 185:16 58:27]
  assign ifu_io_ifu_AXI_RDATA = xbar_io_ifu_AXI_RDATA; // @[src/main/scala/cpu.scala 142:14]
  assign ifu_io_ifu_AXI_RVALID = xbar_io_ifu_AXI_RVALID; // @[src/main/scala/cpu.scala 142:14]
  assign ifu_io_ifu_AXI_RLAST = xbar_io_ifu_AXI_RLAST; // @[src/main/scala/cpu.scala 142:14]
  assign ifu_io_ifu_AXI_ARREADY = xbar_io_ifu_AXI_ARREADY; // @[src/main/scala/cpu.scala 142:14]
  assign ifu2idu_regs_clock = clock;
  assign ifu2idu_regs_reset = reset | pc_update_en | idu2exu_fence_i; // @[src/main/scala/cpu.scala 138:61]
  assign ifu2idu_regs_io_i_pc = ifu_io_o_pc; // @[src/main/scala/cpu.scala 148:33]
  assign ifu2idu_regs_io_i_ins = ifu_io_o_ins; // @[src/main/scala/cpu.scala 150:33]
  assign ifu2idu_regs_io_i_hit = ifu_io_hit; // @[src/main/scala/cpu.scala 151:33]
  assign ifu2idu_regs_io_i_post_ready = idu2exu_regs_io_pre_ready; // @[src/main/scala/cpu.scala 185:16 58:27]
  assign idu1_io_ins = ifu2idu_regs_io_o_ins; // @[src/main/scala/cpu.scala 157:17]
  assign idu2exu_regs_clock = clock;
  assign idu2exu_regs_reset = _T_1 | idu2exu_fence_i; // @[src/main/scala/cpu.scala 179:60]
  assign idu2exu_regs_io_i_pc = ifu2idu_regs_io_o_pc; // @[src/main/scala/cpu.scala 102:35 149:33]
  assign idu2exu_regs_io_i_pre_valid = ifu2idu_regs_io_o_post_valid; // @[src/main/scala/cpu.scala 57:27 154:33]
  assign idu2exu_regs_io_i_post_ready = exu_io_o_pre_ready; // @[src/main/scala/cpu.scala 262:19 60:27]
  assign idu2exu_regs_io_i_imm = idu1_io_o_imm; // @[src/main/scala/cpu.scala 158:17 21:17]
  assign idu2exu_regs_io_i_csr_addr = idu1_io_o_csr_addr; // @[src/main/scala/cpu.scala 162:17 25:27]
  assign idu2exu_regs_io_i_src1 = regfile_io_rdata1; // @[src/main/scala/cpu.scala 26:17 120:7]
  assign idu2exu_regs_io_i_src2 = regfile_io_rdata2; // @[src/main/scala/cpu.scala 27:17 121:7]
  assign idu2exu_regs_io_i_rd = idu_addr_rd[3:0]; // @[src/main/scala/cpu.scala 195:24]
  assign idu2exu_regs_io_i_csr_rs2 = Csrs_io_o_csr_rdata; // @[src/main/scala/cpu.scala 131:11 32:21]
  assign idu2exu_regs_io_i_csr_src_sel = idu1_io_o_csr_wen; // @[src/main/scala/cpu.scala 166:17 40:21]
  assign idu2exu_regs_io_i_mepc = Csrs_io_o_mepc; // @[src/main/scala/cpu.scala 33:18 132:9]
  assign idu2exu_regs_io_i_mtvec = Csrs_io_o_mtvec; // @[src/main/scala/cpu.scala 34:19 133:9]
  assign idu2exu_regs_io_i_exu_opt = idu1_io_o_exu_opt; // @[src/main/scala/cpu.scala 163:17 37:21]
  assign idu2exu_regs_io_i_alu_opt = idu1_io_o_alu_opt; // @[src/main/scala/cpu.scala 164:17 38:21]
  assign idu2exu_regs_io_i_wen = idu1_io_o_wen; // @[src/main/scala/cpu.scala 165:17 39:21]
  assign idu2exu_regs_io_i_csr_wen = idu1_io_o_csr_wen; // @[src/main/scala/cpu.scala 166:17 40:21]
  assign idu2exu_regs_io_i_src_sel1 = idu1_io_o_src_sel1; // @[src/main/scala/cpu.scala 167:17 44:24]
  assign idu2exu_regs_io_i_src_sel2 = idu1_io_o_src_sel2; // @[src/main/scala/cpu.scala 168:17 45:24]
  assign idu2exu_regs_io_i_mret = idu1_io_o_mret; // @[src/main/scala/cpu.scala 170:17 53:18]
  assign idu2exu_regs_io_i_ecall = idu1_io_o_ecall; // @[src/main/scala/cpu.scala 169:17 52:19]
  assign idu2exu_regs_io_i_load = idu1_io_o_load; // @[src/main/scala/cpu.scala 171:17 51:21]
  assign idu2exu_regs_io_i_store = idu1_io_o_store; // @[src/main/scala/cpu.scala 172:17 50:22]
  assign idu2exu_regs_io_i_brch = idu1_io_o_brch; // @[src/main/scala/cpu.scala 173:17 46:18]
  assign idu2exu_regs_io_i_jal = idu1_io_o_jal; // @[src/main/scala/cpu.scala 174:17 47:17]
  assign idu2exu_regs_io_i_jalr = idu1_io_o_jalr; // @[src/main/scala/cpu.scala 175:17 48:18]
  assign idu2exu_regs_io_i_fence_i = idu1_io_o_fence_i; // @[src/main/scala/cpu.scala 177:17 63:27]
  assign idu2exu_regs_io_i_ebreak = idu1_io_o_ebreak; // @[src/main/scala/cpu.scala 176:17 49:20]
  assign exu_clock = clock;
  assign exu_reset = reset;
  assign exu_io_i_src1 = idu2exu_regs_io_out_src1; // @[src/main/scala/cpu.scala 215:25 69:26]
  assign exu_io_i_src2 = idu2exu_regs_io_out_src2; // @[src/main/scala/cpu.scala 216:25 70:26]
  assign exu_io_i_pc = idu2exu_regs_io_out_pc; // @[src/main/scala/cpu.scala 68:24 214:25]
  assign exu_io_i_imm = idu2exu_regs_io_out_imm; // @[src/main/scala/cpu.scala 217:25 71:25]
  assign exu_io_i_src_sel1 = idu2exu_regs_io_out_src_sel1; // @[src/main/scala/cpu.scala 218:25 72:30]
  assign exu_io_i_src_sel2 = idu2exu_regs_io_out_src_sel2; // @[src/main/scala/cpu.scala 219:25 73:30]
  assign exu_io_i_load = idu2exu_regs_io_out_load; // @[src/main/scala/cpu.scala 227:25 81:26]
  assign exu_io_i_store = idu2exu_regs_io_out_store; // @[src/main/scala/cpu.scala 228:25 82:27]
  assign exu_io_i_brch = idu2exu_regs_io_out_brch; // @[src/main/scala/cpu.scala 229:25 83:26]
  assign exu_io_i_jal = idu2exu_regs_io_out_jal; // @[src/main/scala/cpu.scala 230:25 84:25]
  assign exu_io_i_jalr = idu2exu_regs_io_out_jalr; // @[src/main/scala/cpu.scala 231:25 85:26]
  assign exu_io_i_ecall = idu2exu_regs_io_out_ecall; // @[src/main/scala/cpu.scala 226:25 80:27]
  assign exu_io_i_mret = idu2exu_regs_io_out_mret; // @[src/main/scala/cpu.scala 225:25 79:26]
  assign exu_io_i_alu_opt = idu2exu_regs_io_out_alu_opt; // @[src/main/scala/cpu.scala 222:25 76:29]
  assign exu_io_exu_opt = idu2exu_regs_io_out_exu_opt; // @[src/main/scala/cpu.scala 221:25 75:29]
  assign exu_io_lsu_AXI_AWREADY = xbar_io_lsu_AXI_AWREADY; // @[src/main/scala/cpu.scala 257:15]
  assign exu_io_lsu_AXI_WREADY = xbar_io_lsu_AXI_WREADY; // @[src/main/scala/cpu.scala 257:15]
  assign exu_io_lsu_AXI_RDATA = xbar_io_lsu_AXI_RDATA; // @[src/main/scala/cpu.scala 257:15]
  assign exu_io_lsu_AXI_RVALID = xbar_io_lsu_AXI_RVALID; // @[src/main/scala/cpu.scala 257:15]
  assign exu_io_lsu_AXI_ARREADY = xbar_io_lsu_AXI_ARREADY; // @[src/main/scala/cpu.scala 257:15]
  assign exu_io_lsu_AXI_BVALID = xbar_io_lsu_AXI_BVALID; // @[src/main/scala/cpu.scala 257:15]
  assign exu_io_i_pre_valid = idu2exu_regs_io_post_valid; // @[src/main/scala/cpu.scala 186:16 59:27]
  assign exu_wbu_regs_clock = clock;
  assign exu_wbu_regs_reset = reset | pc_update_en; // @[src/main/scala/cpu.scala 264:45]
  assign exu_wbu_regs_io_i_brch = exu_io_o_brch; // @[src/main/scala/cpu.scala 254:15 31:22]
  assign exu_wbu_regs_io_i_jal = idu2exu_regs_io_out_jal; // @[src/main/scala/cpu.scala 230:25 84:25]
  assign exu_wbu_regs_io_i_wen = idu2exu_regs_io_out_wen; // @[src/main/scala/cpu.scala 223:25 77:25]
  assign exu_wbu_regs_io_i_csr_wen = idu2exu_regs_io_out_csr_wen; // @[src/main/scala/cpu.scala 224:25 78:29]
  assign exu_wbu_regs_io_i_jalr = idu2exu_regs_io_out_jalr; // @[src/main/scala/cpu.scala 231:25 85:26]
  assign exu_wbu_regs_io_i_ebreak = idu2exu_regs_io_out_ebreak; // @[src/main/scala/cpu.scala 232:25 86:28]
  assign exu_wbu_regs_io_i_mret = idu2exu_regs_io_out_mret; // @[src/main/scala/cpu.scala 225:25 79:26]
  assign exu_wbu_regs_io_i_ecall = idu2exu_regs_io_out_ecall; // @[src/main/scala/cpu.scala 226:25 80:27]
  assign exu_wbu_regs_io_i_res = exu_io_o_res; // @[src/main/scala/cpu.scala 253:15 30:21]
  assign exu_wbu_regs_io_i_pc_next = exu_io_o_pc_next; // @[src/main/scala/cpu.scala 236:25 255:15]
  assign exu_wbu_regs_io_i_csr_addr = idu2exu_regs_io_out_csr_addr; // @[src/main/scala/cpu.scala 234:25 88:30]
  assign exu_wbu_regs_io_i_rd_addr = {{1'd0}, idu2exu_rd}; // @[src/main/scala/cpu.scala 279:29]
  assign exu_wbu_regs_io_o_post_valid = exu_io_o_post_valid; // @[src/main/scala/cpu.scala 261:19 61:27]
  assign wbu_clock = clock;
  assign wbu_reset = reset;
  assign wbu_io_i_wen = exu_wbu_regs_io_o_wen; // @[src/main/scala/cpu.scala 286:22 93:25]
  assign wbu_io_i_rd_addr = {{1'd0}, exu2wbu_rd_addr}; // @[src/main/scala/cpu.scala 301:20]
  assign wbu_io_i_csr_addr = exu_wbu_regs_io_o_csr_addr; // @[src/main/scala/cpu.scala 284:22 91:30]
  assign wbu_io_i_csr_wen = exu_wbu_regs_io_o_csr_wen; // @[src/main/scala/cpu.scala 287:22 94:29]
  assign wbu_io_i_brch = exu_wbu_regs_io_o_brch; // @[src/main/scala/cpu.scala 288:22 95:26]
  assign wbu_io_i_jal = exu_wbu_regs_io_o_jal; // @[src/main/scala/cpu.scala 289:22 96:25]
  assign wbu_io_i_jalr = exu_wbu_regs_io_o_jalr; // @[src/main/scala/cpu.scala 290:22 97:26]
  assign wbu_io_i_mret = exu_wbu_regs_io_o_mret; // @[src/main/scala/cpu.scala 291:22 98:26]
  assign wbu_io_i_ecall = exu_wbu_regs_io_o_ecall; // @[src/main/scala/cpu.scala 292:22 99:27]
  assign wbu_io_i_pc_next = exu_wbu_regs_io_o_pc_next; // @[src/main/scala/cpu.scala 283:22 90:29]
  assign wbu_io_i_res = exu_wbu_regs_io_o_res; // @[src/main/scala/cpu.scala 100:25 293:22]
  assign wbu_io_next = exu_wbu_regs_io_next; // @[src/main/scala/cpu.scala 314:17]
endmodule
module RamSimulation(
  input         clock,
  input         reset,
  input  [31:0] io_sram_AXI_AWADDR, // @[src/main/scala/ram/Sram.scala 314:14]
  input         io_sram_AXI_AWVALID, // @[src/main/scala/ram/Sram.scala 314:14]
  output        io_sram_AXI_AWREADY, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [2:0]  io_sram_AXI_AWSIZE, // @[src/main/scala/ram/Sram.scala 314:14]
  input         io_sram_AXI_WVALID, // @[src/main/scala/ram/Sram.scala 314:14]
  output        io_sram_AXI_WREADY, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [31:0] io_sram_AXI_WDATA, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [3:0]  io_sram_AXI_WSTRB, // @[src/main/scala/ram/Sram.scala 314:14]
  input         io_sram_AXI_WLAST, // @[src/main/scala/ram/Sram.scala 314:14]
  output [31:0] io_sram_AXI_RDATA, // @[src/main/scala/ram/Sram.scala 314:14]
  output        io_sram_AXI_RVALID, // @[src/main/scala/ram/Sram.scala 314:14]
  input         io_sram_AXI_RREADY, // @[src/main/scala/ram/Sram.scala 314:14]
  output [3:0]  io_sram_AXI_RID, // @[src/main/scala/ram/Sram.scala 314:14]
  output        io_sram_AXI_RLAST, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [31:0] io_sram_AXI_ARADDR, // @[src/main/scala/ram/Sram.scala 314:14]
  input         io_sram_AXI_ARVALID, // @[src/main/scala/ram/Sram.scala 314:14]
  output        io_sram_AXI_ARREADY, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [3:0]  io_sram_AXI_ARID, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [7:0]  io_sram_AXI_ARLEN, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [2:0]  io_sram_AXI_ARSIZE, // @[src/main/scala/ram/Sram.scala 314:14]
  input  [1:0]  io_sram_AXI_ARBURST, // @[src/main/scala/ram/Sram.scala 314:14]
  output        io_sram_AXI_BVALID, // @[src/main/scala/ram/Sram.scala 314:14]
  input         io_sram_AXI_BREADY, // @[src/main/scala/ram/Sram.scala 314:14]
  input         io_flush // @[src/main/scala/ram/Sram.scala 314:14]
);
  wire  sram_sim_clock; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_reset; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [31:0] sram_sim_sram_AXI_AWADDR; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_AWVALID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_AWREADY; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [7:0] sram_sim_sram_AXI_AWLEN; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [2:0] sram_sim_sram_AXI_AWSIZE; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [1:0] sram_sim_sram_AXI_AWBURST; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [3:0] sram_sim_sram_AXI_AWID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_WVALID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_WREADY; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [31:0] sram_sim_sram_AXI_WDATA; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [3:0] sram_sim_sram_AXI_WSTRB; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_WLAST; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [31:0] sram_sim_sram_AXI_RDATA; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [1:0] sram_sim_sram_AXI_RRESP; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_RVALID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_RREADY; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [3:0] sram_sim_sram_AXI_RID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_RLAST; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [31:0] sram_sim_sram_AXI_ARADDR; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_ARVALID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_ARREADY; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [3:0] sram_sim_sram_AXI_ARID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [7:0] sram_sim_sram_AXI_ARLEN; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [2:0] sram_sim_sram_AXI_ARSIZE; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [1:0] sram_sim_sram_AXI_ARBURST; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [1:0] sram_sim_sram_AXI_BRESP; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_BVALID; // @[src/main/scala/ram/Sram.scala 319:24]
  wire  sram_sim_sram_AXI_BREADY; // @[src/main/scala/ram/Sram.scala 319:24]
  wire [3:0] sram_sim_sram_AXI_BID; // @[src/main/scala/ram/Sram.scala 319:24]
  ram_simulation sram_sim ( // @[src/main/scala/ram/Sram.scala 319:24]
    .clock(sram_sim_clock),
    .reset(sram_sim_reset),
    .sram_AXI_AWADDR(sram_sim_sram_AXI_AWADDR),
    .sram_AXI_AWVALID(sram_sim_sram_AXI_AWVALID),
    .sram_AXI_AWREADY(sram_sim_sram_AXI_AWREADY),
    .sram_AXI_AWLEN(sram_sim_sram_AXI_AWLEN),
    .sram_AXI_AWSIZE(sram_sim_sram_AXI_AWSIZE),
    .sram_AXI_AWBURST(sram_sim_sram_AXI_AWBURST),
    .sram_AXI_AWID(sram_sim_sram_AXI_AWID),
    .sram_AXI_WVALID(sram_sim_sram_AXI_WVALID),
    .sram_AXI_WREADY(sram_sim_sram_AXI_WREADY),
    .sram_AXI_WDATA(sram_sim_sram_AXI_WDATA),
    .sram_AXI_WSTRB(sram_sim_sram_AXI_WSTRB),
    .sram_AXI_WLAST(sram_sim_sram_AXI_WLAST),
    .sram_AXI_RDATA(sram_sim_sram_AXI_RDATA),
    .sram_AXI_RRESP(sram_sim_sram_AXI_RRESP),
    .sram_AXI_RVALID(sram_sim_sram_AXI_RVALID),
    .sram_AXI_RREADY(sram_sim_sram_AXI_RREADY),
    .sram_AXI_RID(sram_sim_sram_AXI_RID),
    .sram_AXI_RLAST(sram_sim_sram_AXI_RLAST),
    .sram_AXI_ARADDR(sram_sim_sram_AXI_ARADDR),
    .sram_AXI_ARVALID(sram_sim_sram_AXI_ARVALID),
    .sram_AXI_ARREADY(sram_sim_sram_AXI_ARREADY),
    .sram_AXI_ARID(sram_sim_sram_AXI_ARID),
    .sram_AXI_ARLEN(sram_sim_sram_AXI_ARLEN),
    .sram_AXI_ARSIZE(sram_sim_sram_AXI_ARSIZE),
    .sram_AXI_ARBURST(sram_sim_sram_AXI_ARBURST),
    .sram_AXI_BRESP(sram_sim_sram_AXI_BRESP),
    .sram_AXI_BVALID(sram_sim_sram_AXI_BVALID),
    .sram_AXI_BREADY(sram_sim_sram_AXI_BREADY),
    .sram_AXI_BID(sram_sim_sram_AXI_BID)
  );
  assign io_sram_AXI_AWREADY = sram_sim_sram_AXI_AWREADY; // @[src/main/scala/ram/Sram.scala 322:20]
  assign io_sram_AXI_WREADY = sram_sim_sram_AXI_WREADY; // @[src/main/scala/ram/Sram.scala 322:20]
  assign io_sram_AXI_RDATA = sram_sim_sram_AXI_RDATA; // @[src/main/scala/ram/Sram.scala 322:20]
  assign io_sram_AXI_RVALID = sram_sim_sram_AXI_RVALID; // @[src/main/scala/ram/Sram.scala 322:20]
  assign io_sram_AXI_RID = sram_sim_sram_AXI_RID; // @[src/main/scala/ram/Sram.scala 322:20]
  assign io_sram_AXI_RLAST = sram_sim_sram_AXI_RLAST; // @[src/main/scala/ram/Sram.scala 322:20]
  assign io_sram_AXI_ARREADY = sram_sim_sram_AXI_ARREADY; // @[src/main/scala/ram/Sram.scala 322:20]
  assign io_sram_AXI_BVALID = sram_sim_sram_AXI_BVALID; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_clock = clock; // @[src/main/scala/ram/Sram.scala 320:21]
  assign sram_sim_reset = reset | io_flush; // @[src/main/scala/ram/Sram.scala 321:37]
  assign sram_sim_sram_AXI_AWADDR = io_sram_AXI_AWADDR; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_AWVALID = io_sram_AXI_AWVALID; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_AWLEN = 8'h0; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_AWSIZE = io_sram_AXI_AWSIZE; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_AWBURST = 2'h0; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_AWID = 4'h0; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_WVALID = io_sram_AXI_WVALID; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_WDATA = io_sram_AXI_WDATA; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_WSTRB = io_sram_AXI_WSTRB; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_WLAST = io_sram_AXI_WLAST; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_RREADY = io_sram_AXI_RREADY; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_ARADDR = io_sram_AXI_ARADDR; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_ARVALID = io_sram_AXI_ARVALID; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_ARID = io_sram_AXI_ARID; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_ARLEN = io_sram_AXI_ARLEN; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_ARSIZE = io_sram_AXI_ARSIZE; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_ARBURST = io_sram_AXI_ARBURST; // @[src/main/scala/ram/Sram.scala 322:20]
  assign sram_sim_sram_AXI_BREADY = io_sram_AXI_BREADY; // @[src/main/scala/ram/Sram.scala 322:20]
endmodule
module top(
  input   clock,
  input   reset,
  output  io_ebreak, // @[src/main/scala/top.scala 11:14]
  output  io_diff // @[src/main/scala/top.scala 11:14]
);
  wire  cpu_clock; // @[src/main/scala/top.scala 16:19]
  wire  cpu_reset; // @[src/main/scala/top.scala 16:19]
  wire [31:0] cpu_io_io_master_AXI_AWADDR; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_AWVALID; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_AWREADY; // @[src/main/scala/top.scala 16:19]
  wire [2:0] cpu_io_io_master_AXI_AWSIZE; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_WVALID; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_WREADY; // @[src/main/scala/top.scala 16:19]
  wire [31:0] cpu_io_io_master_AXI_WDATA; // @[src/main/scala/top.scala 16:19]
  wire [3:0] cpu_io_io_master_AXI_WSTRB; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_WLAST; // @[src/main/scala/top.scala 16:19]
  wire [31:0] cpu_io_io_master_AXI_RDATA; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_RVALID; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_RREADY; // @[src/main/scala/top.scala 16:19]
  wire [3:0] cpu_io_io_master_AXI_RID; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_RLAST; // @[src/main/scala/top.scala 16:19]
  wire [31:0] cpu_io_io_master_AXI_ARADDR; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_ARVALID; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_ARREADY; // @[src/main/scala/top.scala 16:19]
  wire [3:0] cpu_io_io_master_AXI_ARID; // @[src/main/scala/top.scala 16:19]
  wire [7:0] cpu_io_io_master_AXI_ARLEN; // @[src/main/scala/top.scala 16:19]
  wire [2:0] cpu_io_io_master_AXI_ARSIZE; // @[src/main/scala/top.scala 16:19]
  wire [1:0] cpu_io_io_master_AXI_ARBURST; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_BVALID; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_io_master_AXI_BREADY; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_flush; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_ebreak; // @[src/main/scala/top.scala 16:19]
  wire  cpu_io_diff; // @[src/main/scala/top.scala 16:19]
  wire  sram_clock; // @[src/main/scala/top.scala 17:20]
  wire  sram_reset; // @[src/main/scala/top.scala 17:20]
  wire [31:0] sram_io_sram_AXI_AWADDR; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_AWVALID; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_AWREADY; // @[src/main/scala/top.scala 17:20]
  wire [2:0] sram_io_sram_AXI_AWSIZE; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_WVALID; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_WREADY; // @[src/main/scala/top.scala 17:20]
  wire [31:0] sram_io_sram_AXI_WDATA; // @[src/main/scala/top.scala 17:20]
  wire [3:0] sram_io_sram_AXI_WSTRB; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_WLAST; // @[src/main/scala/top.scala 17:20]
  wire [31:0] sram_io_sram_AXI_RDATA; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_RVALID; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_RREADY; // @[src/main/scala/top.scala 17:20]
  wire [3:0] sram_io_sram_AXI_RID; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_RLAST; // @[src/main/scala/top.scala 17:20]
  wire [31:0] sram_io_sram_AXI_ARADDR; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_ARVALID; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_ARREADY; // @[src/main/scala/top.scala 17:20]
  wire [3:0] sram_io_sram_AXI_ARID; // @[src/main/scala/top.scala 17:20]
  wire [7:0] sram_io_sram_AXI_ARLEN; // @[src/main/scala/top.scala 17:20]
  wire [2:0] sram_io_sram_AXI_ARSIZE; // @[src/main/scala/top.scala 17:20]
  wire [1:0] sram_io_sram_AXI_ARBURST; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_BVALID; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_sram_AXI_BREADY; // @[src/main/scala/top.scala 17:20]
  wire  sram_io_flush; // @[src/main/scala/top.scala 17:20]
  CpuCore cpu ( // @[src/main/scala/top.scala 16:19]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_io_master_AXI_AWADDR(cpu_io_io_master_AXI_AWADDR),
    .io_io_master_AXI_AWVALID(cpu_io_io_master_AXI_AWVALID),
    .io_io_master_AXI_AWREADY(cpu_io_io_master_AXI_AWREADY),
    .io_io_master_AXI_AWSIZE(cpu_io_io_master_AXI_AWSIZE),
    .io_io_master_AXI_WVALID(cpu_io_io_master_AXI_WVALID),
    .io_io_master_AXI_WREADY(cpu_io_io_master_AXI_WREADY),
    .io_io_master_AXI_WDATA(cpu_io_io_master_AXI_WDATA),
    .io_io_master_AXI_WSTRB(cpu_io_io_master_AXI_WSTRB),
    .io_io_master_AXI_WLAST(cpu_io_io_master_AXI_WLAST),
    .io_io_master_AXI_RDATA(cpu_io_io_master_AXI_RDATA),
    .io_io_master_AXI_RVALID(cpu_io_io_master_AXI_RVALID),
    .io_io_master_AXI_RREADY(cpu_io_io_master_AXI_RREADY),
    .io_io_master_AXI_RID(cpu_io_io_master_AXI_RID),
    .io_io_master_AXI_RLAST(cpu_io_io_master_AXI_RLAST),
    .io_io_master_AXI_ARADDR(cpu_io_io_master_AXI_ARADDR),
    .io_io_master_AXI_ARVALID(cpu_io_io_master_AXI_ARVALID),
    .io_io_master_AXI_ARREADY(cpu_io_io_master_AXI_ARREADY),
    .io_io_master_AXI_ARID(cpu_io_io_master_AXI_ARID),
    .io_io_master_AXI_ARLEN(cpu_io_io_master_AXI_ARLEN),
    .io_io_master_AXI_ARSIZE(cpu_io_io_master_AXI_ARSIZE),
    .io_io_master_AXI_ARBURST(cpu_io_io_master_AXI_ARBURST),
    .io_io_master_AXI_BVALID(cpu_io_io_master_AXI_BVALID),
    .io_io_master_AXI_BREADY(cpu_io_io_master_AXI_BREADY),
    .io_flush(cpu_io_flush),
    .io_ebreak(cpu_io_ebreak),
    .io_diff(cpu_io_diff)
  );
  RamSimulation sram ( // @[src/main/scala/top.scala 17:20]
    .clock(sram_clock),
    .reset(sram_reset),
    .io_sram_AXI_AWADDR(sram_io_sram_AXI_AWADDR),
    .io_sram_AXI_AWVALID(sram_io_sram_AXI_AWVALID),
    .io_sram_AXI_AWREADY(sram_io_sram_AXI_AWREADY),
    .io_sram_AXI_AWSIZE(sram_io_sram_AXI_AWSIZE),
    .io_sram_AXI_WVALID(sram_io_sram_AXI_WVALID),
    .io_sram_AXI_WREADY(sram_io_sram_AXI_WREADY),
    .io_sram_AXI_WDATA(sram_io_sram_AXI_WDATA),
    .io_sram_AXI_WSTRB(sram_io_sram_AXI_WSTRB),
    .io_sram_AXI_WLAST(sram_io_sram_AXI_WLAST),
    .io_sram_AXI_RDATA(sram_io_sram_AXI_RDATA),
    .io_sram_AXI_RVALID(sram_io_sram_AXI_RVALID),
    .io_sram_AXI_RREADY(sram_io_sram_AXI_RREADY),
    .io_sram_AXI_RID(sram_io_sram_AXI_RID),
    .io_sram_AXI_RLAST(sram_io_sram_AXI_RLAST),
    .io_sram_AXI_ARADDR(sram_io_sram_AXI_ARADDR),
    .io_sram_AXI_ARVALID(sram_io_sram_AXI_ARVALID),
    .io_sram_AXI_ARREADY(sram_io_sram_AXI_ARREADY),
    .io_sram_AXI_ARID(sram_io_sram_AXI_ARID),
    .io_sram_AXI_ARLEN(sram_io_sram_AXI_ARLEN),
    .io_sram_AXI_ARSIZE(sram_io_sram_AXI_ARSIZE),
    .io_sram_AXI_ARBURST(sram_io_sram_AXI_ARBURST),
    .io_sram_AXI_BVALID(sram_io_sram_AXI_BVALID),
    .io_sram_AXI_BREADY(sram_io_sram_AXI_BREADY),
    .io_flush(sram_io_flush)
  );
  assign io_ebreak = cpu_io_ebreak; // @[src/main/scala/top.scala 22:13]
  assign io_diff = cpu_io_diff; // @[src/main/scala/top.scala 25:13]
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_io_master_AXI_AWREADY = sram_io_sram_AXI_AWREADY; // @[src/main/scala/top.scala 20:20]
  assign cpu_io_io_master_AXI_WREADY = sram_io_sram_AXI_WREADY; // @[src/main/scala/top.scala 20:20]
  assign cpu_io_io_master_AXI_RDATA = sram_io_sram_AXI_RDATA; // @[src/main/scala/top.scala 20:20]
  assign cpu_io_io_master_AXI_RVALID = sram_io_sram_AXI_RVALID; // @[src/main/scala/top.scala 20:20]
  assign cpu_io_io_master_AXI_RID = sram_io_sram_AXI_RID; // @[src/main/scala/top.scala 20:20]
  assign cpu_io_io_master_AXI_RLAST = sram_io_sram_AXI_RLAST; // @[src/main/scala/top.scala 20:20]
  assign cpu_io_io_master_AXI_ARREADY = sram_io_sram_AXI_ARREADY; // @[src/main/scala/top.scala 20:20]
  assign cpu_io_io_master_AXI_BVALID = sram_io_sram_AXI_BVALID; // @[src/main/scala/top.scala 20:20]
  assign sram_clock = clock;
  assign sram_reset = reset;
  assign sram_io_sram_AXI_AWADDR = cpu_io_io_master_AXI_AWADDR; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_AWVALID = cpu_io_io_master_AXI_AWVALID; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_AWSIZE = cpu_io_io_master_AXI_AWSIZE; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_WVALID = cpu_io_io_master_AXI_WVALID; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_WDATA = cpu_io_io_master_AXI_WDATA; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_WSTRB = cpu_io_io_master_AXI_WSTRB; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_WLAST = cpu_io_io_master_AXI_WLAST; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_RREADY = cpu_io_io_master_AXI_RREADY; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_ARADDR = cpu_io_io_master_AXI_ARADDR; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_ARVALID = cpu_io_io_master_AXI_ARVALID; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_ARID = cpu_io_io_master_AXI_ARID; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_ARLEN = cpu_io_io_master_AXI_ARLEN; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_ARSIZE = cpu_io_io_master_AXI_ARSIZE; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_ARBURST = cpu_io_io_master_AXI_ARBURST; // @[src/main/scala/top.scala 20:20]
  assign sram_io_sram_AXI_BREADY = cpu_io_io_master_AXI_BREADY; // @[src/main/scala/top.scala 20:20]
  assign sram_io_flush = cpu_io_flush; // @[src/main/scala/top.scala 21:17]
endmodule
