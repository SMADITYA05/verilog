module rcount(input[3:0]temp,input  clk,rst,output reg[3:0] count );
  always@(posedge clk) begin
    if(~rst)
      count<=temp;
    else
    count<={count[0],count[3:1]};
  end
endmodule
