module fullsub(x,y,bin,diff,bout);
  input x,y,bin;
  output diff,bout;
  wire w1,w2,w3,n1,n2;
  assign w1=y^bin;
  assign n1=!w1;
  assign n2=!y;
  assign w2=n2&bin;
  assign diff=x^w1;
  assign w3=n1&x;
  assign bout=w2&w3;
  endmodule
