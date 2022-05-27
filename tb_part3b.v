`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 06:54:54 PM
// Design Name: 
// Module Name: tb_part3b
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


module tb_part3b();

 reg clk, button_push;
 wire clean, output_exist;
 wire [2:0] deb_count;
 
 part_3b tb(.clk(clk), .button_push(button_push), .clean(clean), .output_exist(output_exist), .deb_count(deb_count));
 
 initial
begin
clk = 1'b0;
button_push = 1'b0;

#1000 $finish;
end

always
begin
#2 clk = ~clk;

end

always
begin
 #17 button_push = ~button_push;
 end
endmodule
 
