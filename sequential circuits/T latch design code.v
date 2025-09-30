module tlatch(input t,e, output reg q,qb);
  always@(*)begin
  if(e==1)begin
    assign q=~t;
    assign qb=t;
  end
  else begin
    $display("invalid");
  end
  end
endmodule
