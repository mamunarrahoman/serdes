`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NA
// Engineer: Mamunar Rahoman
// 
// Create Date: 11/01/2024 01:44:20 PM
// Design Name: 
// Module Name: deserializer_tb
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


module deserializer_tb;
reg clk_tb;
reg rst_tb;
reg data_in_tb;
wire [7:0]data_out_tb;

deserializer dut(
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
    #0 rst_tb=0; data_in_tb=1'b1;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b0;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b0;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b0;
    #10 data_in_tb=1'b1;
    
    #20 rst_tb=1'b1;
    
    #10 rst_tb=1'b0; data_in_tb=1'b1;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b0;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b1;
    #10 data_in_tb=1'b0;
    
    #30 $finish;
end
endmodule
