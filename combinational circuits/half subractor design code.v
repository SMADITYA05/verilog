module halfsubtractor(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  wire w1;
  assign w1=!a;
  assign diff= a^b;
  assign borrow = w1&b;
endmodule
