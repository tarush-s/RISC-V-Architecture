module testbench;
reg clk=1;
wire done;
always#10 clk=~clk;
riscv u0(.clk(clk),
         .done(done));
         
endmodule
