module riscv(
    input clk,
    output done
    );
    wire we,resultsrc,mem_write,alu_src,sx_ch,zero,pc_src;
    wire [4:0] a1,a2,a3;
    wire [2:0] alu_control;
    wire [6:0] cu;
    wire [11:0] sx_in;
    wire [31:0] ins,r1,r2,alu_out,mux2_out,dm_out,mux1_out,sx_out,pc_out;
    pc p0(sx_out,pc_src,clk,pc_out);
    instruction_mem i0(pc_out,ins);
    instruction_decoder id0 (ins,a1,a2,a3,cu,sx_in);
    sign_extender s0 (sx_in,sx_ch,sx_out);
    control_unit c0 (zero,cu,alu_control,we,resultsrc,mem_write,alu_src,sx_ch,pc_src);
    register_file r0 (we,a1,a2,r1,r2,mux2_out,a3);
    mux m1(alu_src,r2,sx_out,mux1_out);
    alu a0(r1,mux1_out,alu_control,alu_out,done,zero);
    data_memory d1 (mem_write,alu_out,r2,dm_out);
    mux m2(resultsrc,alu_out,dm_out,mux2_out);
    
endmodule
