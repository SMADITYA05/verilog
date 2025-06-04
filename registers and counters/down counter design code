module downcounter(input clk,rst,output reg[3:0] count);
  always @(negedge clk) begin
    if(rst)
      count<=4'b1111;
    else 
      count=count-4'd1;
  end
endmodule
