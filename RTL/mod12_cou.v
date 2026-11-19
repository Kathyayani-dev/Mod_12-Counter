# code for mod12_cou
  ...
     module mod12_cou(d_in,load,clk,reset,count);
        input [3:0]d_in;
        input load,clk,reset;
        output reg [3:0]count;

        always@(posedge clk)
        begin
                if(reset)
                        count<=4'b0;
                else if(load)
                        count<=d_in;
                          else if(count==4'd11)
                                       count<=4'b0;
                else
                        count<=count+1'b1;
        end
        endmodule
...
