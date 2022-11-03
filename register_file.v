module register_file(
    input we,
    input [4:0] a1,
    input [4:0] a2,
    output reg [31:0] out1,
    output reg [31:0] out2,
    input [31:0] data_in,
    input [4:0] data_adr
    );
    reg [31:0] rf [11:0]; // 12 registers with width 32 bits
    initial 
    begin // chnage values accordingly 
    rf[0]=32'h00000006;
    rf[1]=32'h00000007;
    rf[2]=32'h00000005;
    rf[3]=32'h00000003;
    rf[4]=32'h00000000;
    rf[5]=32'h00000004;
    rf[6]=32'h00000001;
    rf[7]=32'h00000002;
    rf[8]=32'h00000009;
    rf[9]=32'h0000000a;
    rf[10]=32'h0000000b;
    rf[11]=32'h0000000b;
    end
    always@*
    begin
    if(we)
    rf[data_adr]=data_in;
    
    out1=rf[a1];
    out2=rf[a2];
    end  
    
    
endmodule
