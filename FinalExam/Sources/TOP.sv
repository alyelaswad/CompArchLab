`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 04:05:28 PM
// Design Name: 
// Module Name: TOP
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 03:41:44 PM
// Design Name: 
// Module Name: TOP
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


module TOP(
input fastclock,
input switchclock,
output reg [3:0] Anode,
output reg [6:0] ssd_out);


    reg [7:0] i_data [0:3];   // Four reg data values
    reg [7:0] weights [0:3]; // Four weights
    wire [7:0] o_result;  // Weighted sum output
    
    initial begin
       i_data[0]=8'd3;
     i_data[1]=8'd1;
   i_data[2]=8'd3;
    i_data[3]=8'd2;
   weights[0] =8'd8;
    weights[1] =8'd3;
   weights[2] =8'd6;
    weights[3] =8'd2;
    end
cascadedSummationPipeline#(8) pip(switchclock,i_data,weights,o_result);  // Weighted sum output
Four_Digit_Seven_Segment_Driver_Optimized(fastclock,{5'd0,o_result},Anode,ssd_out);
endmodule

