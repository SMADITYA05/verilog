module repeated3(input clk,rst,i,output reg out);
  parameter a=3'b000,b=3'b001,c=3'b010,d=3'b011,e=3'b100,f=3'b101,g=3'b110;
  reg[2:0] state,next_state ;
  always@(posedge clk)begin
    if(rst)begin
      state<=a;
    end
    else begin
     state <= next_state;
    end
  end
  always@(*) begin
    next_state = state;
    out = 0;
     case(state)
        a:next_state = (i) ? b : e ;
        b:next_state = (i) ? c : e ;
        c:begin
          next_state = (i) ? d : e ;
          if(i) out = 1;
        end
        d:begin
          next_state = (i) ? d : e ;
          if(i) out = 1;
        end
        e:next_state = (!i) ? f : b ;
        f:begin
          next_state = (!i) ? g : b ;
          if(!i) out = 1;
        end
        g:begin
          next_state = (!i) ? g : b ;
          if(!i) out = 1;
        end
        default: begin
        next_state = a;
        out = 0;
        end
      endcase
  end
endmodule
