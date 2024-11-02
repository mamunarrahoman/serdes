`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NA
// Engineer: Mamunar Rahoman
// 
// Create Date: 11/01/2024 01:43:58 PM
// Design Name: 
// Module Name: deserializer
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


module deserializer(
                    input clk,rst,
                    input data_in,
                    output reg [7:0]data_out
                   );
    integer bit_count=0;
    reg [7:0]midpoint_out=8'b0;

always@(posedge clk or posedge rst) //asynchronous reset
    begin
        if(rst)
            begin
                data_out<=8'bx;
                midpoint_out<=8'b0;
                bit_count=0;
            end
        else
            begin
                if(bit_count<8)
                    begin
                        midpoint_out[bit_count]<=data_in;
                        bit_count=bit_count+1;
                    end
                else
                    begin
                        bit_count=0;
                        data_out<=midpoint_out;
                    end
            end
    end
endmodule
