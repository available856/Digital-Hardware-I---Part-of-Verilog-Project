`timescale 1ns/1ps

module LEDdecoder (output reg [6:0] LED,
                   input [3:0] char, input wire AN, reset);

  
  always @(char, reset, AN)
    begin  
      
      LED [6:0] = 7'b1111111;
      
      if (!reset)
        LED[6:0]=7'b1111111;
      else if (!AN)
        begin
          case(char)
        4'd0 : LED[6:0] = 7'b1000000;
        4'd1 : LED[6:0] = 7'b1111001;
        4'd2 : LED[6:0] = 7'b0001100;
        4'd3 : LED[6:0] = 7'b0110000;
        4'd4 : LED[6:0] = 7'b0011001;
        4'd5 : LED[6:0] = 7'b0010010;
        4'd6 : LED[6:0] = 7'b0000010;
        4'd7 : LED[6:0] = 7'b1111000;
        4'd8 : LED[6:0] = 7'b0000000;
        4'd9 : LED[6:0] = 7'b0010000;
        "-"  : LED[6:0] = 7'b0111111;
        " "  : LED[6:0] = 7'b1111111;
        "F"  : LED[6:0] = 7'b0001110;
      	endcase
        end
      
      end
  
  

  
endmodule