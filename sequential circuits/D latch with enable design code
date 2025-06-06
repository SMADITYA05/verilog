module dlatch(input d,en,output reg q, qb);
  always@(*)begin
  if(en==1)begin
  	q<=d;
  	qb<=~d;
  end
  else if(en==0) begin
  	q<=1'bx;
  	qb<=1'bx;
  end
  end
endmodule
