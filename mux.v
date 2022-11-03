module mux(         //2->1 mux
    input select,   
    input [31:0] a, // if input is 0
    input [31:0] b, // if input is 1
    output [31:0] out
    );
    assign out=(select)?b:a;
endmodule
