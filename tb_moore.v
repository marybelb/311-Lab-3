`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 06:18:54 PM
// Design Name: 
// Module Name: tb_moore
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


module tb_moore();

reg [1:0] ain; 
reg clock, reset;
wire aout;

moore mo(.ain(ain), .clock(clock), .reset(reset), .aout(aout));

initial
begin
reset = 1'b0;
clock = 1'b0;
ain = 2'b00;
#4 reset = 1'b1;
#10 reset = 1'b0;
#19 ain = 2'b11;
#100 $finish;
end

always
begin
#5 clock = ~clock;
end

endmodule
