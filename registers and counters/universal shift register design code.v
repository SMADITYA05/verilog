module rlshift(input[3:0]din,input[1:0]dl ,input e,clk,rst,sin, output reg[3:0]out);
  always@(posedge clk)begin
    if(rst)
      out<=4'b0000;
    else if(dl==2'b11)
      out<=din;
    else if(dl==2'b10)
      out<={sin,out[3:1]};
    else if(dl==2'b01)
      out<={out[2:0],sin};
  end
endmodule
