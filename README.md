# RISC-V-Processor-RV32I-Base-ISA-

## Description
This repository contains a Verilog RTL implementation of a 32-bit single-cycle RISC processor. It features a modular datapath, control logic, and memory blocks, supporting core R-type, I-type, load/store, and branch instructions. The design utilizes a combination of structural and behavioral modeling to evaluate instruction execution within a single clock domain.

## Features
*   **Single-Cycle Execution:** All supported instructions complete in a single clock cycle.
*   **Harvard Architecture:** Separate instruction and data memory modules for simultaneous access.
*   **Modular RTL Design:** Clean separation of datapath components (ALU, Register File, Program Counter, Multiplexers) and Control logic.
*   **Simulation-Ready:** Includes a dedicated testbench (`test_tb`) for immediate functional verification.

## Supported Instruction Set
*   **R-Type:** `add`, `sub`, `and`, `or`
*   **I-Type:** `addi`, `ori`
*   **Load/Store:** `lw`, `sw`
*   **Branch:** `beq`

## Module Hierarchy
*   `top`: Top-level datapath integration.
    *   `Program_Counter`: 32-bit synchronous PC register.
    *   `PCplus4` & `Adder`: Combinational address calculation.
    *   `Instruction_Mem`: 64-word (32-bit) instruction memory, pre-loaded with test instructions.
    *   `Reg_File`: 32x32-bit register file supporting dual asynchronous reads and a synchronous write.
    *   `Control_Unit`: Main opcode decoder for datapath routing.
    *   `ALU_unit` & `ALU_Control`: Arithmetic logic unit and dedicated ALU controller.
    *   `Data_Memory`: 64-word (32-bit) RAM for data storage.
    *   `ImmGen`: Extracts and sign-extends immediate values.
    *   `Mux1`, `Mux2`, `Mux3`: Data routing multiplexers.
    *   `And_Logic`: Branch decision evaluation logic.

## Getting Started

### Prerequisites
*   A Verilog HDL simulator (e.g., Xilinx Vivado, ModelSim, or Icarus Verilog).

### Simulation Instructions
1.  Add the `RISC.v` file to your simulation project.
2.  Set `test_tb` as the top-level module for your simulation run.
3.  Run the simulation. The testbench generates a clock signal with a 10-time-unit period and handles the initial reset sequence.
4.  Observe the waveform viewer to track key data buses such as `PC_top`, `instruction_top`, `address_top`, and `WriteBack_top`.

---
**Author:** Shalem Raju Redapangu | RTL Design Engineer
