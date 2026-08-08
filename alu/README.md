# 4-bit ALU using Verilog

## Description

This project implements a **4-bit Arithmetic Logic Unit (ALU)** using Verilog HDL.

An ALU performs arithmetic and logical operations based on the control signal `ALU_Sel`.

## Operations

| ALU_Sel | Operation     |
| ------- | ------------- |
| 000     | Addition      |
| 001     | Subtraction   |
| 010     | AND           |
| 011     | OR            |
| 100     | XOR           |
| 101     | NOT A         |
| 110     | Left Shift A  |
| 111     | Right Shift A |

## Inputs

* `A` – 4-bit input
* `B` – 4-bit input
* `ALU_Sel` – 3-bit operation selection signal

## Outputs

* `Result` – 4-bit operation result
* `Carry` – Carry output for addition

## Files

```text
alu.v          → ALU design
alu_tb.v       → ALU testbench
output.txt     → Simulation output
README.md      → Project documentation
```

## Tools Used

* Verilog HDL
* VS Code
* Icarus Verilog
* Git and GitHub

## How to Run

Compile the Verilog files:

```bash
iverilog -o alu_sim alu.v alu_tb.v
```

Run the simulation:

```bash
vvp alu_sim
```

Save the output to a file:

```bash
vvp alu_sim > output.txt
```

## Expected Result

The testbench verifies all 8 ALU operations including:

* Addition
* Subtraction
* AND
* OR
* XOR
* NOT
* Left shift
* Right shift

## Learning Outcome

This project demonstrates:

* Verilog `case` statements
* Combinational logic
* Arithmetic operations
* Logical operations
* Shift operations
* Testbench creation
* Verilog simulation
