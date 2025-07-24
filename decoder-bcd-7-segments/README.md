

This repository contains an open-source implementation of a **BCD (Binary-Coded Decimal) to 7-Segment Decoder**, including digital logic design, Verilog code, simulation, waveform analysis, and layout synthesis.

## 🔧 Project Structure

The project is organized into the following components:

- **/digital/**: Logic gate schematic designed in [Digital](https://github.com/hneemann/Digital)
- **/verilog/**: RTL implementation in Verilog and testbench
- **/sim/**: Icarus Verilog simulations and GTKWave waveform files
- **/layout/**: OpenLane flow for synthesis and layout generation


## 📷 Schematic

The image below shows the logic gate-level schematic of the BCD to 7-Segment Decoder, designed using the [Digital](https://github.com/hneemann/Digital) software.  
It represents how each segment of the display is driven based on the 4-bit BCD input.

(![BCD Schematic](https://github.com/LeoIgreja11/verilog_projects/blob/main/decoder-bcd-7-segments/digital-decoder-bcd-7segments/bcd_4bits.png)


## 🌊 Wave Forms

The image below shows monitors the waveforms of both input and output signals of the BCD to 7-Segment Decoder, using serial pulse inputs. The waveform visualization is done through the GTKWave software, allowing detailed observation of how the Decoder responds to changes in the 4-bit BCD input.

(![BCD Waves](https://github.com/user-attachments/assets/6d42a2ce-a063-4323-af2e-d5678d2a19c5)# BCD to 7-Segment Decoder)

## 💻 Design Chip

![BCD Design in IC](https://github.com/LeoIgreja11/verilog_projects/blob/main/decoder-bcd-7-segments/KLayout/image.png)

### Requirements

- [Icarus Verilog](https://bleyer.org/icarus/)
- [GTKWave](http://gtkwave.sourceforge.net/)
- [Digital](https://github.com/hneemann/Digital)
- [OpenLane](https://github.com/The-OpenROAD-Project/OpenLane)



## 🙏 Acknowledgments

This project was developed based on the excellent tutorials and videos by [Matheus Grossi](https://www.youtube.com/@mattgrossi7873).  
Special thanks for making digital design more accessible and understandable!
