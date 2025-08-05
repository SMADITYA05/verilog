module upcounter(input clk,rst, output reg[3:0] count);
  always@(negedge clk)begin
    if(rst)
      count<=4'b0000;
    else
      count<=count+4'b0001;
  end
endmodule
