	module full(a,b,cin,sum,carry);
  	input a,b,cin;
  	output sum,carry;
  	assign sum = a^b^cin;
  	assign carry= a&b|a&cin|b&cin ;
    endmodule
  	module ripple#(parameter size=4)
    	( input[size-1:0] a,b, input cin, output[size-1:0] sum,carry);
    	full f1(a[0],b[0],cin,sum[0],carry[0]);
    	genvar i;
    	generate 
          for (i=1;i<size;i++)begin
        	full f1(a[i],b[i],carry[i-1],sum[i],carry[i]);
          end
    	endgenerate
	endmodule 
