module mux(a,b,s,x);
  input a,b,s;
  output x;
  assign x= a&!s|b&s;
endmodule
