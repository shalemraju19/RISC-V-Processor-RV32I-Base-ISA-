`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 02:41:24 PM
// Design Name: 
// Module Name: test_tb
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


module test_tb;

reg clk,reset;

top uut (.clk(clk), .reset(reset));

initial begin 
clk = 0; 
reset = 1;
#5;
reset = 0;
#400;
end
always begin 
#5 clk = ~clk;
end
endmodule



