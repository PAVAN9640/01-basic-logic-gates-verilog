`timescale 1ns / 1ps
module logic_gates_tb;
reg A;
reg B;
wire AND_OUT;
wire OR_OUT;
wire XOR_OUT;
wire NAND_OUT;
wire NOR_OUT;
logic_gates uut(
    .A(A),
    .B(B),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .XOR_OUT(XOR_OUT),
    .NAND_OUT(NAND_OUT),
    .NOR_OUT(NOR_OUT)
);
initial begin
A=0; B=0;
#10;
A=0; B=1;
#10;
A=1; B=0;
#10;
A=1; B=1;
#10;
$finish;
end
endmodule