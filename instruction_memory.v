module instruction_mem
 ( input [31:0] adr,
   output [31:0] ins
   );
   reg [31:0] rom[31:0];
   initial begin
   // all r type instruction's results are stored in register number 4 of the register file 
   // for s type instruction the result is stored in register number 9 of data memory
   // for i type instruction the result is fetched from data memory and stored in again register number 4 of the register file 
   rom[0]<=32'h00110202;  // r type for a1&a2
   rom[1]<=32'h00110203;  // r type for a1|a2
   rom[2]<=32'h00110201;  // r type for a1-a2
   rom[3]<=32'h00110200;  // r type for a1+a2
   rom[4]<=32'h00618230;  // i type instruction
   rom[5]<=32'h06930220;  // s type instruction
   rom[6]<=32'h06a58041;  // beq instruction to jump pc by 2
   rom[7]<=32'h00110202;  
   rom[8]<=32'h00110203;
   rom[9]<=32'h00110201;
   rom[10]<=32'h00110200;
   rom[11]<=32'h00618230;
   rom[12]<=32'h06930220;
   rom[13]<=32'h06a58041;
   rom[14]<=32'h00110202;  
   rom[15]<=32'h00110203;
   rom[16]<=32'h00110201;
   rom[17]<=32'h00110200;
   rom[18]<=32'h00618230;
   rom[19]<=32'h06930220;
   rom[20]<=32'h06a58041;
   rom[21]<=32'h00110202;  
   rom[22]<=32'h00110203;
   rom[23]<=32'h00110201;
   rom[24]<=32'h00110200;
   rom[25]<=32'h00618230;
   rom[26]<=32'h06930220;
   rom[27]<=32'h06a58041;  
   end
   assign ins=rom[adr];
   endmodule
   
