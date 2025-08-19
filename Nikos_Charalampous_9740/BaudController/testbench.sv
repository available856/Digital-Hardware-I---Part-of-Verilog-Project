`timescale 1ns/1ps
module baud_controller_TB ();
  
  reg clk_TB;
  reg reset_TB;
  reg [2:0] baud_select_TB;
  wire sample_ENABLE_TB;
  
  baud_controller baud_controller_TB(reset_TB, clk_TB, baud_select_TB, sample_ENABLE_TB);
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
    clk_TB=0; reset_TB=0; baud_select_TB=3'b111;
    #20 clk_TB = 1;
    #20 clk_TB = 0;
    #20 clk_TB = 1;
    #20 clk_TB = 0;
    #20 clk_TB = 1;
    #20 clk_TB = 0;
    #20 clk_TB = 1;
    #20 clk_TB = 0;
    
  end
  
endmodule