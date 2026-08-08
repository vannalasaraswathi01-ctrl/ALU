// 4-bit Arithmetic Logic Unit (ALU)

module ALU (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] ALU_Sel,
    output reg [3:0] Result,
    output reg       Carry
);

always @(*) begin
    Result = 4'b0000;
    Carry  = 1'b0;

    case (ALU_Sel)

        3'b000: begin
            // Addition
            {Carry, Result} = A + B;
        end

        3'b001: begin
            // Subtraction
            Result = A - B;
        end

        3'b010: begin
            // AND
            Result = A & B;
        end

        3'b011: begin
            // OR
            Result = A | B;
        end

        3'b100: begin
            // XOR
            Result = A ^ B;
        end

        3'b101: begin
            // NOT A
            Result = ~A;
        end

        3'b110: begin
            // Left Shift A
            Result = A << 1;
        end

        3'b111: begin
            // Right Shift A
            Result = A >> 1;
        end

    endcase
end

endmodule