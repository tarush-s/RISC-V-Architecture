module alu(
    input [31:0] in1,
    input [31:0] in2,
    input [2:0] control,   // the third bit of the instruction can also be used to include more functions 
    output [31:0] out,
    output done,
    output zero
    );
    reg [31:0] answer;
    reg z=0;
    always@*
    begin
    if(control == 3'b000)      // add function
    answer=in1+in2;
    else if(control == 3'b011) // or function
    answer=in1|in2;
    else if(control == 3'b010) //and function
    answer=in1&in2;
    else if(control == 3'b001) //subtract function
    answer=in1+(~in2)+1;
    else
    answer=32'b0;
    if(answer == 32'b0)
    z=1'b1;
    else
    z=1'b0;
    end
    assign zero=z;
    assign out=answer;
    assign done=1'b1;
endmodule
