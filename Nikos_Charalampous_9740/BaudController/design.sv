`timescale 1ns/1ps
module baud_controller (reset, clk, baud_select, sample_ENABLE);
  
  
  input clk, reset; 
  input [2:0] baud_select; 
  output reg sample_ENABLE;
  integer i=3;
  reg [31:0] sample;
  
  always @ (clk, reset, baud_select)
    begin
      
      
	  sample_ENABLE <= 0;
      if (reset)
        sample_ENABLE <= 0;
      else
      case (baud_select)
        3'b000 : sample <=  1041.667;
        3'b001 : sample <=  260.417;
        3'b010 : sample <=  65.104;
        3'b011 : sample <=  32.552;
        3'b100 : sample <=  16.276;
        3'b101 : sample <=  8.138;
        3'b110 : sample <=  5.425;
        3'b111 : sample <=  2.713;
        default : sample <= 0;
        endcase
        
    end
  
  always @ (clk)
    begin
      
   	 i <= i+1;
      if (i >= sample)
     begin
       sample_ENABLE <= 1;
       i <= 0;
     end
    end

endmodule