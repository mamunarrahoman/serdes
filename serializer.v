`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NA
// Engineer: Mamunar Rahoman
// 
// Create Date: 11/01/2024 12:44:19 PM
// Design Name: 
// Module Name: serializer
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


module serializer(
		input clk,rst,
		input [7:0]data_in,
		output reg data_out
		 );
	integer bit_count=0;

always@(posedge clk)
	begin
	if(rst==1'b1) //synchronous reset
		begin
		data_out<=1'b0;
		end
	else
		begin
			if(bit_count<8)
			begin
			data_out<=data_in[bit_count];
			bit_count=bit_count+1;
			end
			else
			begin
			bit_count=0;
			end
		end
	end
endmodule
