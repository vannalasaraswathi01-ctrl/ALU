// Testbench for 4-bit ALU

module ALU_tb;

reg  [3:0] A;
reg  [3:0] B;
reg  [2:0] ALU_Sel;

wire [3:0] Result;
wire       Carry;

ALU uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .Carry(Carry)
);

initial begin

    $display("A     B     SEL    Result    Carry");
    $display("-----------------------------------");

    // Addition
    A = 4'b0101; B = 4'b0011; ALU_Sel = 3'b000;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    // Subtraction
    A = 4'b0110; B = 4'b0010; ALU_Sel = 3'b001;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    // AND
    A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b010;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    // OR
    A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b011;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    // XOR
    A = 4'b1100; B = 4'b1010; ALU_Sel = 3'b100;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    // NOT A
    A = 4'b1010; B = 4'b0000; ALU_Sel = 3'b101;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    // Left Shift
    A = 4'b0011; B = 4'b0000; ALU_Sel = 3'b110;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    // Right Shift
    A = 4'b1100; B = 4'b0000; ALU_Sel = 3'b111;
    #10;
    $display("%b  %b  %b    %b       %b", A, B, ALU_Sel, Result, Carry);

    $finish;

end

endmodule