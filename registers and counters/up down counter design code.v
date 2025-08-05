module updowncount(input a,clk,rst, output reg[3:0] count);
  always@(negedge clk) begin
    if(rst==1)
      count<=4'd0;
    else if(a)
      count = count+4'd1;
    else 
      count <= count-1;
  end
endmodule
