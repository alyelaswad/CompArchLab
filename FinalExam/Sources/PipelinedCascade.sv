`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 02:45:51 PM
// Design Name: 
// Module Name: CascadedPipelined
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


module cascadedSummationPipeline#(parameter WIDTH = 16)(
    input clk,
    input [WIDTH-1:0] i_data [0:3],   // Four input data values
    input [WIDTH-1:0] weights [0:3], // Four weights
    output reg [WIDTH-1:0] o_result  // Weighted sum output
);

    reg [WIDTH-1:0] MultiplicationOut [0:3];
    wire [WIDTH-1:0] Stage1MulOut [0:3];
    reg [WIDTH-1:0] sum1; 
    reg [WIDTH-1:0] sum2; 
    wire [WIDTH-1:0] sum1Piped; 
    wire [WIDTH-1:0] sum2Piped; 
    integer i;
    always @(posedge clk) begin
        for (i = 0; i < 4; i = i + 1) begin
           MultiplicationOut[i] <= (i_data[i] * weights[i]);
        end
    end
    
Nbitreg #(WIDTH*4) nbitregyast1 (clk,1'b1,1'b0,{MultiplicationOut[0],MultiplicationOut[1],
                                               MultiplicationOut[2],MultiplicationOut[3]},
                                               {Stage1MulOut[0],Stage1MulOut[1],
                                               Stage1MulOut[2],Stage1MulOut[3]});   
                                               
                                             
    always @(posedge clk) begin
        sum1 <= Stage1MulOut[0]+Stage1MulOut[1];
        sum2 <= Stage1MulOut[2]+Stage1MulOut[3];
    end
    
    Nbitreg #(2*(WIDTH)) nbitregyast2 (clk,1'b1,1'b0,{sum1,sum2},{sum1Piped,sum2Piped});  
    always @(posedge clk) begin
       o_result <= sum1Piped+sum2Piped;
    end 
    
endmodule

