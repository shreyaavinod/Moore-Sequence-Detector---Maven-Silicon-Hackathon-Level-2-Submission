`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 22:09:17
// Design Name: 
// Module Name: dff_tb
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


module dff_tb(

    );
    
    reg clk,rst,d;
    wire q,qb;
    
    dff uut(clk,rst,d,q,qb);
    
    always #50 clk=!clk;
    
    initial begin
    clk=0;
    rst=0;
    #80;
    rst=1;
    d=1;
    #50;
    d=0;
    #40;
    d=1;
    end
    
endmodule
