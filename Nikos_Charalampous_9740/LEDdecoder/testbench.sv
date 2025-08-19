`timescale 1ns/1ps

module LEDdecoder_TB ();
  
  reg [3:0] char_TB;
  reg AN_TB, reset_TB;
  wire [6:0] LED_TB;
  
  LEDdecoder LEDdecoder_TB(LED_TB, char_TB, AN_TB, reset_TB);
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    AN_TB = 0; reset_TB = 1;
    char_TB = 0; #20 $display("LED = %b", LED_TB);
    char_TB = 1; #20 $display("LED = %b", LED_TB);
    char_TB = 2; #20 $display("LED = %b", LED_TB);
    char_TB = 3; #20 $display("LED = %b", LED_TB);
  end
  
endmodule