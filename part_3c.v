`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 07:31:26 PM
// Design Name: 
// Module Name: part_3c
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


module part_3c(

input clk, button_push, reset, 
output [5:0] count

    );
    
    wire clean;
    
    part_3b hi(.clk(clk), .button_push(button_push), .clean(clean));
    part_3a hello(.clock(clk), .reset(reset), .count_t(clean), .out(count));
    
    
endmodule
