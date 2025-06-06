module rlshift(input[3:0]din,input e,clk,rst,dl,sin, output reg[3:0]out);
  always@(posedge clk)begin
    if(rst)
      out<=4'b0000;
    else if(dl)
      out<=din;
    else if(e)
      out<={sin,out[3:1]};
    else
      out<={out[2:0],sin};
  end
endmodule
