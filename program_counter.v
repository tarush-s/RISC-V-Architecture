module pc(
    input [31:0] sx_out,
    input pc_src,
    input clk,
    output [31:0] out
    );
    reg [31:0] count=0;
    always@(posedge clk)
    begin 
    if(pc_src==1'b0)  //normal execution
    count<=count+1'b1;
    else if(pc_src == 1'b1) //branching
    count<=count+sx_out;
    end
    assign out=count;
        
endmodule
