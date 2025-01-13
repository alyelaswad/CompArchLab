`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2024 03:09:04 PM
// Design Name: 
// Module Name: tb
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


module tb();
     reg clk;
    reg [7:0] i_data [0:3];   // Four reg data values
    reg [7:0] weights [0:3]; // Four weights
    wire [7:0] o_result;  // Weighted sum output
    reg Err;
    cascadedSummationPipeline#(8) pip(clk,i_data,weights,o_result);  // Weighted sum output
    initial begin
    clk=0;
    forever #5 clk=~clk;
    end
    initial begin
    Err=0;
    i_data[0]=8'd2;
    i_data[1]=8'd1;
    i_data[2]=8'd3;
    i_data[3]=8'd2;
    weights[0] =8'd8;
    weights[1] =8'd3;
    weights[2] =8'd6;
    weights[3] =8'd2;
    #20
    i_data[0]=8'd2;
    i_data[1]=8'd2;
    i_data[2]=8'd2;
    i_data[3]=8'd1;
    weights[0] =8'd7;
    weights[1] =8'd2;
    weights[2] =8'd5;
    weights[3] =8'd8;
    #25
    if(o_result!=8'd41)begin
        Err=1;
        $display("Incorrect result");
    end
    i_data[0]=8'd3;
    i_data[1]=8'd5;
    i_data[2]=8'd1;
    i_data[3]=8'd7;
    weights[0] =8'd12;
    weights[1] =8'd20;
    weights[2] =8'd23;
    weights[3] =8'd50;
    #21
    if(o_result!=8'd36)begin
        Err=1;
        $display("Incorrect result");
    end
    i_data[0]=8'd3;
    i_data[1]=8'd3;
    i_data[2]=8'd3;
    i_data[3]=8'd3;
    weights[0] =8'd2;
    weights[1] =8'd2;
    weights[2] =8'd6;
    weights[3] =8'd4;
    #26
    if(o_result!=8'd253)begin
         Err=1;
         $display("Incorrect result");
     end
     #25
    if(o_result!=8'd42)begin
         Err=1;
         $display("Incorrect result");
     end
    
    end


endmodule
