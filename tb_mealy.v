`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2022 07:25:25 PM
// Design Name: 
// Module Name: tb_mealy
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


module tb_mealy();

reg ain, clock, reset;
wire aout;

mealy m(.ain(ain), .clock(clock), .reset(reset), .aout(aout));

initial
begin
reset = 1'b0;
clock = 1'b0;
ain = 1'b0;
#4 reset = 1'b1;
#10 reset = 1'b0;
#19 ain = 1'b1;
#100 $finish;
end

always
begin
#5 clock = ~clock;
end

endmodule




