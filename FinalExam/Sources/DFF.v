`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 02:49:17 PM
// Design Name: 
// Module Name: DFF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module DFlipFlop
(input clk, input rst, input D, output reg Q);
always @ (posedge clk or posedge rst)
if (rst) begin
Q <= 1'b0;
end else begin
Q <= D;
end
endmodule
