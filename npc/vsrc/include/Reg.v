module ysyx_23060124_Reg #(WIDTH = 1, RESET_VAL = 0) (
  input clk,
  input rst,
  input wen,
  input [WIDTH-1:0] din,
  output reg [WIDTH-1:0] dout
);
  always @(posedge clk or negedge rst) begin
    if (!rst) dout <= RESET_VAL;
    else if (wen) dout <= din;
  end
endmodule

