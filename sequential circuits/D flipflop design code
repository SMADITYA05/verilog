module dflipflop(input d,clk,rst,output reg q,output qb);
  always@(posedge clk)begin
    if(rst) begin
      q<=0;
    end
    else begin
      case(d)
        1'b0:q<=1'b0;
        1'b1:q<=1'b1;
      endcase
    end
  end
   assign qb = ~q;
endmodule
