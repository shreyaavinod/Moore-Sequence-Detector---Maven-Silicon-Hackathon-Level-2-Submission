# Moore-Sequence-Detector---Maven-Silicon-Hackathon-Level-2-Submission

Moore Sequence Detector - RTL Design | Maven Silicon Hackathon Level 2
 🎯 Project Overview

Hello Guys! This is my official submission for the  Level 2 of the Maven Silicon Hackathon. This RTL design project focuses on the design and verification of a Moore Finite State Machine (FSM) that detects the binary sequence "10101" from an incoming serial data stream, with support for overlapping sequences. The FSM is built using basic D flip-flops and Verilog RTL.

* Design Type: Moore FSM (Overlapping Sequence Detector)
* Target Sequence: 10101 (MSB first)
* Language: Verilog HDL
* Verification: Testbench and simulation waveform analysis
* Design Method: FSM implemented using discrete D Flip-Flops

Project Structure

* moore_sd.v - Main module implementing the Moore FSM logic
* dff.v - D Flip-Flop module used for state retention
* moore_sd_tb.v - Testbench for verifying the FSM behavior
* MAVEN SILICON HACKATHON LEVEL 2.pdf - Contains design description, waveform results, and synthesis reports

Features

* Detects "10101" sequence with support for overlapping sequences
* Modular design with reusability of DFFs
* Fully synthesized and simulated design with waveforms
* Reset functionality included

Simulation & Verification

A custom testbench feeds various patterns to the FSM. The output signal y goes HIGH whenever the FSM successfully detects the target sequence.

Synthesis & Analysis

* RTL schematic and synthesis reports are provided.
* Design analyzed for logic depth, power consumption, and area.

Sequence Detection Logic
Implemented using:

Three D flip-flops for state retention.

Combinational logic to determine next states based on current inputs.

Output depends only on the current state, making it a true Moore machine.
