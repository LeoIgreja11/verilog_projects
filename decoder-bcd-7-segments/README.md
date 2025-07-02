# BCD to 7-Segment Decoder

This repository contains an open-source implementation of a **BCD (Binary-Coded Decimal) to 7-Segment Decoder**, including digital logic design, Verilog code, simulation, waveform analysis, and layout synthesis.

## 🔧 Project Structure

The project is organized into the following components:

- **/digital/**: Logic gate schematic designed in [Digital](https://github.com/hneemann/Digital)
- **/verilog/**: RTL implementation in Verilog and testbench
- **/sim/**: Icarus Verilog simulations and GTKWave waveform files
- **/layout/**: OpenLane flow for synthesis and layout generation

## ▶️ How to Run

### Requirements

- [Icarus Verilog](https://bleyer.org/icarus/)
- [GTKWave](http://gtkwave.sourceforge.net/)
- [Digital](https://github.com/hneemann/Digital)
- [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)

### Simulation

```bash
cd sim/
iverilog -o decoder_tb ../verilog/decoder.v decoder_tb.v
vvp decoder_tb
gtkwave waveform.vcd
```

## 🙏 Acknowledgments

This project was developed based on the excellent tutorials and videos by [Matheus Grossi](https://www.youtube.com/@mattgrossi7873).  
Special thanks for making digital design more accessible and understandable!
