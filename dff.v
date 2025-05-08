`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 22:07:00
// Design Name: 
// Module Name: dff
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


module dff(
    input clk,
    input rst,
    input d,
    output reg q,
    output reg qb
    );
    
    always @(posedge clk or negedge rst)begin
    if (rst==0)begin
    q<=0;
    qb<=1;
    end
    else if (d==0 || d==1)begin
    q<=d;
    qb<=~d;
    end
    end
endmodule
