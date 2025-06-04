module lshift(input[3:0]din,input clk,rst,dl,sin, output reg[3:0]out);
  always@(posedge clk)begin
    if(rst)
      out<=4'b0000;
    else if(dl)
      out<=din;
    else
      out<={out[2:0],sin};
  end
endmodule
