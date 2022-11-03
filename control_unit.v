module control_unit(
    input zero,
    input [6:0] op,
    output reg [2:0] alu_control,
    output reg we,
    output reg result_src,
    output reg mem_write,
    output reg alu_src,
    output reg sx_ch,
    output reg pc_src
    );
    always@*
    begin
    if(zero == 1'b1) // zero flag
    pc_src=1'b1;
    else
    pc_src=1'b0;
    
    if(op[6:4] == 3'b000)// for r type of instruction
    begin
    alu_control=op[2:0];  
    we=1'b1;
    result_src=1'b0;
    mem_write=1'b0;
    alu_src=1'b0;
    sx_ch=1'b0;
    end
    else if(op[6:4] == 3'b011) // for i type of instruction
    begin
    alu_control=op[2:0];
    we=1'b1;
    result_src=1'b1;
    mem_write=1'b0;
    alu_src=1'b1;
    sx_ch=1'b0;
    end
    else if(op[6:4] == 3'b010) // for s type of instruction
    begin
    alu_control=op[2:0];
    we=1'b0;
    result_src=1'b1;
    mem_write=1'b1;
    alu_src=1'b1;  
    sx_ch=1'b1;  
    end
    else if(op[6:4] == 3'b100) // for beq type instruction
    begin
    alu_control=op[2:0];
    we=1'b0;
    result_src=1'b1;
    mem_write=1'b0;
    alu_src=1'b0;  
    sx_ch=1'b1; 
    end
    end
endmodule
