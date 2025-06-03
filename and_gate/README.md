# VERILOG PROJECTS

## Gate AND with simulation in GTKWave

This project contains a basic implementation of a logic **AND gate** using Verilog.  
It also includes a testbench and simulation setup using **Icarus Verilog** and **GTKWave**.

### Files

- `and_gate.v` – Verilog module for the AND gate
- `and_gate_tb.v` – Testbench for simulation
- `waveform.vcd` – Output waveform file (generated after simulation)
- `run.sh` – Shell script to compile and simulate the design

### Requirements

- [Icarus Verilog](http://iverilog.icarus.com/)
- [GTKWave](http://gtkwave.sourceforge.net/)
- Unix-based terminal (Linux or WSL)

### How to Run

```bash
./run.sh
gtkwave and_gate.vcd
