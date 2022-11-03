module instruction_decoder(
    input [31:0] in,
    output reg [4:0] a1,
    output reg [4:0] a2,
    output reg [4:0] a3,
    output reg [6:0] cu,
    output reg [11:0] sx
    );
    always@*
    begin
    a1=in[19:15];   // value to alu
    a2=in[24:20];  // value to alu
    a3=in[11:7];   // adr for storing data
    cu=in[6:0];    // to control unit
    sx=in[31:20];  // to sign extender 
    end
endmodule
