`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2022 06:21:41 PM
// Design Name: 
// Module Name: part_3b
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


module part_3b(

input clk, button_push, 
output reg clean,
output reg output_exist, 
output reg [25:0] deb_count
    );

  always @(posedge clk)
  begin
   
    if (button_push == 1'b1 && output_exist == 1'b0 && deb_count == 26'b10011000100101101000000000)
    begin
    clean <= 1'b1;
    deb_count <= 1'b0;
    output_exist <= 1'b1;
    end
    
    else if (button_push == 1'b0)
    begin
    clean <= 1'b0;
    deb_count <= 1'b0;
    output_exist <= 1'b0;
    end
    
    else if (output_exist == 1'b1) 
    begin
    clean <= 1'b0;
    end
    
    else if (deb_count != 26'b10011000100101101000000000)
    begin
    deb_count <= deb_count + 1'b1;
    end
    
    end
    
endmodule