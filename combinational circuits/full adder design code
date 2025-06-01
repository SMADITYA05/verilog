module fulladder(a,b,cin,s2,cout);
  input a,b,cin;
  output s2,cout;
  wire s1,c1,c2;
  assign s1=a^b;
  assign c1=a&b;
  assign s2=s1^cin;
  assign c2=s1&cin;
  assign cout=c2|c1;
endmodule
