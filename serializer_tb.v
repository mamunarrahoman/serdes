`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NA
// Engineer: Mamunar Rahoman
// 
// Create Date: 11/01/2024 12:45:33 PM
// Design Name: 
// Module Name: serializer_tb
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

module serializer_tb;
reg clk_tb;
reg rst_tb;
reg [7:0]data_in_tb;
wire data_out_tb;

serializer dut(
		.clk(clk_tb),
		.rst(rst_tb),
		.data_in(data_in_tb),
		.data_out(data_out_tb)
		 );

initial
begin
	clk_tb=1'b0;
	forever #5 clk_tb=~clk_tb;
end

initial
begin
	#0 rst_tb=1'b0;data_in_tb=8'b10011101;
	#85 rst_tb=1'b1;data_in_tb=8'b0;
	#10 rst_tb=1'b0;data_in_tb=8'b10111101;
	#90 $stop;
end
endmodule
