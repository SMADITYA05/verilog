module halfadder(a,b,carry,sum);
  input a,b;
  output carry,sum;
  assign sum=a^b;
  assign carry = a&b;
endmodule
module fulladder(input a,b,cin, output carry,sum);
  halfadder f1(.a(a),.b(b),.sum(x),.carry(y));
  halfadder f2(.a(x),.b(cin),.sum(sum),.carry(z));
  or(carry,z,y);
endmodule
