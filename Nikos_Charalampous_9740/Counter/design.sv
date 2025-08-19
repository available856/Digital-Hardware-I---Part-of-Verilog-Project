`timescale 1ns/1ps
module Counter (output reg [3:0] AN_EN,
                input clk);
  
  integer i = 0;
  reg [3:0] cnt=4'b1111;
  
  always @(clk)
    begin
      i = i+1;
      if (i >= 16)
        begin
          i = 0;
          cnt = cnt - 1;
        end
      case(cnt)   
      4'b1111 : AN_EN[3:0] = 4'b1111;
      4'b1110 : AN_EN[3:0] = 4'b0111; 
      4'b1101 : AN_EN[3:0] = 4'b1111;
      4'b1100 : AN_EN[3:0] = 4'b1111;
      4'b1011 : AN_EN[3:0] = 4'b1111;
      4'b1010 : AN_EN[3:0] = 4'b1011;
      4'b1001 : AN_EN[3:0] = 4'b1111;
      4'b1000 : AN_EN[3:0] = 4'b1111;
      4'b0111 : AN_EN[3:0] = 4'b1111;
      4'b0110 : AN_EN[3:0] = 4'b1101;
      4'b0101 : AN_EN[3:0] = 4'b1111;
      4'b0100 : AN_EN[3:0] = 4'b1111;
      4'b0011 : AN_EN[3:0] = 4'b1111;
      4'b0010 : AN_EN[3:0] = 4'b1110;
      4'b0001 : AN_EN[3:0] = 4'b1111;
      4'b0000 : AN_EN[3:0] = 4'b1111;
      default : AN_EN[3:0] = 4'bz;
      
  endcase
       end
    
  
endmodule  