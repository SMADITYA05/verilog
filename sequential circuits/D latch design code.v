module dlatch(input d,output q,qb);
  assign q=d;
  assign qb=~d;
endmodule
