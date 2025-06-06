module fsm1010(input i,clk,rst,output reg d);
  reg[1:0]s;
  parameter A= 2'b00;
  parameter B=2'b01;
  parameter C=2'b10;
  parameter D=2'b11;  
  always@(posedge clk)begin
    if(rst)begin
      d<=0;
      s<=A;
    end
    else begin
      case(s)
        A:
          if(i==1)
            s<=B;
          else
            s<=A;
        B:
          if(i==0)
            s<=C;
          else
            s<=B;
        C:
          if(i==1)
            s<=D;
          else
            s<=A;
        D:
          if(i==0)begin
            d<=1;
            s<=A;
          end
            else 
              s<=C;
      endcase
    end
  end
endmodule
