`timescale 1ns/1ps
module Counter_TB();
  reg clk_TB;
  wire [3:0] AN_EN_TB;
  
  Counter Counter_TB (AN_EN_TB, clk_TB);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clk_TB = 0;
    #20 clk_TB=1; $display("AN_EN = %b", AN_EN_TB);
    #20 clk_TB=0; $display("AN_EN = %b", AN_EN_TB);
    #20 clk_TB=1; $display("AN_EN = %b", AN_EN_TB);
    #20 clk_TB=0; $display("AN_EN = %b", AN_EN_TB);
  end
  
endmodule