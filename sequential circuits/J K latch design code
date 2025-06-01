module jklatch(input j,k, output reg q,qb);
  always@(j or k) begin
    if(j!=k)begin
      assign q=j;
      assign qb=k;
    end
    else if(j==1) begin
      assign qb=~q;
    end
    else begin
      assign qb=q;
    end
  end
endmodule
