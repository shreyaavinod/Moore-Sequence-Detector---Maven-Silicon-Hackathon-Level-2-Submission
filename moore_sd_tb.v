`timescale 1ns / 1ps

module moore_sd_tb;

    reg clk, rst, x;
    wire y;

    moore_sd uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );

    always #50 clk = ~clk;
    
    initial begin 
    clk=1'b0;
    rst=1'b0;
    x=1'b0; //(s0)
    
   #100;
   
   rst=1; 
   
   #100;
   rst=1;
   x=1'b1;
   #100;
   x=1'b0;
   #100;
   x=1'b0;
   #100;
   x=1'b1;
   #100;
   x=1'b0;
   #100;
   x=1'b1;
   #100;
   x=1'b0;
   #100;
   x=1'b1;
   #100;
   x=1'b0;
   #100;
   x=1'b1;
   #100;
   x=1'b0;
   #100;
   x=1'b0;
   #100;
   x=1'b1;
   #100;
   x=1'b0;
   #100;
   x=1'b1;
   #100;
   x=1'b0;
   #100;
   x=1'b1;
   #300;
   

   
        $finish;
    end

endmodule
