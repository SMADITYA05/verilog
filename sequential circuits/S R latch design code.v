module srlatch(input s,r, output q,qb);
  nor n1(q,s,qb);
  nor n2(qb,r,q);
endmodule
