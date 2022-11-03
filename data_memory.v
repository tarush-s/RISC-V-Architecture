module data_memory(
    input mem_write,
    input [31:0] adr,
    input [31:0] write_data,
    output [31:0] read_data
    );
    reg [31:0] dm[0:31];
    integer i;
    initial 
    begin
    for(i=0;i<32;i=i+1)
    dm[i]=i;
    end
    always@*
    begin
    if(mem_write)
    dm[adr]=write_data;
    end
    assign read_data=dm[adr];
endmodule
