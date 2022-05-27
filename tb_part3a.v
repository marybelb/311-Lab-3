`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 08:07:29 PM
// Design Name: 
// Module Name: tb_part3a
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


module tb_part3a();

reg clock, reset, count_t;
wire [5:0] out;

part_3a tb(.clock(clock), .reset(reset), .count_t(count_t), .out(out));

initial
begin
reset = 1'b0;
clock = 1'b0;
count_t = 1'b0;
#4 reset = 1'b1;
#10 reset = 1'b0;
#19 count_t = 1'b1;
#1000 $finish;
end

always
begin
#5 clock = ~clock;
end 
endmodule
