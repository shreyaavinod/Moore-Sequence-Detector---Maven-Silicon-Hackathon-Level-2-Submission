`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.05.2025 22:06:17
// Design Name: 
// Module Name: moore_sd
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


module moore_sd(
            input clk,
            input rst,
            input x,
            output y
 

    );
    wire w1,w2,w3,w4,qc,qb,qa,qcb,qbb,qab,xb;
    assign xb=~x;
    assign w1= (qc&qab&x)|(qa&xb&qb)|(qa&xb&qc);
    assign w2=(qab&x&qb)|(qcb&qbb&qa&xb);
    dff dc(clk,rst,w1,qc,qcb);
    dff db(clk,rst,w2,qb,qbb);
    dff da(clk,rst,x,qa,qab);
    assign y=(qc&qbb&qa);
    
endmodule
