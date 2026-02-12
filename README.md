# Water-Level-Indicator-and-Controller-
Project Overview
The Water Level Indicator and Controller is a digital logic–based system designed to monitor water levels in a storage tank and automatically control a pump to prevent overflow, dry running, and water wastage. The system provides a real-time visual display of the tank level using a 7-segment display.

Features
- Automatic pump ON/OFF control
- Real-time water level indication
- 7-segment display output
- Low-cost and simple circuit design
- FPGA simulation using Verilog
- Breadboard hardware implementation

System Working
The system uses conductive probes (hookup wires) placed at different levels inside the water tank to detect water level. These signals are processed by digital logic circuits and displayed on a 7-segment display.
When the water level falls below a predefined low threshold, the controller turns the pump ON. When the tank reaches the high threshold, the controller turns the pump OFF to prevent overflow.
The controller also checks the underground tank level to prevent pump operation during dry conditions.

Hardware Components
- Indicator Circuit
- 9V Battery
- 7805 Voltage Regulator
- IC 74HC147 (Priority Encoder)
- IC 74HC04 (Hex Inverter)
- IC CD4511 (BCD to 7-segment driver)
- 7-segment display (common cathode)
- Resistors and capacitor
- Hookup wires (water level probes)
- Breadboard

Controller Circuit
- IC 74HC02 (NOR Gate)
- LED indicator
- Breadboard and wires

Software Tools
- Quartus II
- ModelSim

Methodology
1. Design system architecture and select components.
2. Place conductive probes at different tank levels.
3. Implement indicator and controller logic in Verilog.
4. Simulate the design using ModelSim.
5. Build and test the circuit on a breadboard.

Simulation
The Verilog design was simulated in ModelSim to verify:
- BCD-to-7-segment display mapping
- Pump control logic
- Correct response to water-level inputs

Applications
- Residential water tanks
- Irrigation systems
- Industrial storage tanks
- High-rise building water management

Future Scope
- Relay-based automatic pump control
- Wireless monitoring system
- LCD-based display
- Multi-tank monitoring system 
