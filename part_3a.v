`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 07:40:55 PM
// Design Name: 
// Module Name: part_3a
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


module part_3a(
input clock, reset, count_t,
output [5:0] out
    );
 
reg [9:0] p_val;
reg [9:0] c_val;

always @(posedge clock)
    begin
    
    if (reset == 1'b1 | p_val == 6'b100010)
    begin
    p_val <= 10'b0;
    c_val <= 10'b1;
    end
   
    else if (count_t == 1'b1)
    begin
    p_val <= c_val;
    c_val <= c_val + p_val;
    end
    
   end
   assign out = p_val;
    
    endmodule