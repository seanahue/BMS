This repository contains a Battery Management System (BMS) project developed by seanahue. The project includes firmware and a Python-based GUI for managing and monitoring battery systems. Please refer to the schematic file for correct wiring.




Hardware and Software Required:

Hardware:
PIC24FJ128GA202 microcontroller
PICkit 4 debugger with micro-USB to USB x cord
CP2102N USB to UART Bridge with USB C to USB x cord
BQ76920EVM from Texas Instruments
Three 3.7 V Li-ion batteries constructed in series
Two 5.1k Ohm External I2C pull-up resistors for SDA and SCL for MCU
0.1 μF capacitor for Vcap (pin 20 on MCU)
10k Ohm resistor for MCLRn (pin 1 on MCU)


Software:
MPLAB X IDE v6.25 using FreeRTOS using 1.10.375 device family pack and XC16 v2.10 compiler toolchain
Silicon Labs CP210x USB to UART Bridge Driver for Windows 11
Python 3.13 installed and added to environment variable path
VS Code v1.100.0 (latest as of writing report) with Python 3.13.3 Interpreter

pip:
python -m pip install --upgrade

Pyserial:
pip install pyserial




Overview:
The BMS project is structured into two main components:

Firmware: Located in the rtos_ga202.X directory, this component is written in C and is intended to run on a PIC24 microcontroller in MPLAB v6.25. It manages real-time operations for battery monitoring, including tasks such as voltage and current sensing, temperature monitoring, and Coulomb Counting.

Python GUI: Found in the Python_GUI_BQ76920 directory, this is a graphical user interface developed in Python 3. It is designed to interface with the firmware, providing real-time data visualization and control functionalities for the battery management system.




Features:
Real-Time Monitoring: Track battery parameters such as voltage, current, and temperature in real-time.

Cell Balancing: Ensure uniform charge across all cells to maximize battery life and performance. Perform write commands to the cell balancing register to accomplish this.

User Interface: Interactive GUI for easy monitoring and control of the battery system.




Installation:
Clone the Repository:
git clone https://github.com/seanahue/BMS.git




Firmware Setup:
Navigate to the rtos_ga202.X directory.

Build the firmware using your preferred C development environment.

Flash the compiled firmware onto your microcontroller.




Python GUI Setup:
Navigate to the Python_GUI_BQ76920 directory.

Install the required Python libraries using pip.

Run the GUI application:
python main.py




Once both the firmware and GUI are set up:
Connect your microcontroller to your computer via USB or another communication interface. The MCU may be powered from the battery pack, so the PICkit 4 debugger power is not needed.

Connect your microcontroller to the BQ76920EVM using the I2C headers and appropriate SDA/SCL pins on your MCU.

Connect your CP2102N USB to UART bridge adapter to your computer.

Connect your battery pack (3 - 5 cells for BQ76920EVM) to the BQ76920EVM. Note that the current code is configured for a 3 - cell battery pack, with VC2 through VC4 shorted together, and VC5 used to represent the 3rd cell voltage. Ensure that the necessary shorts are present on the EVM board itself, as well as the correct shunts (SDA and SCL shunts were the only shunts used on the EVM).

Launch the Python GUI to start monitoring and controlling your battery system. The GUI should automatically detect a COM port. 

Use the GUI to view status data, perform read and write commands, and view real-time Coulomb Counter data.




Contributing:
This was created for a senior design project at University, but contributions for improvement are always welcome.




License:
This project is licensed under the MIT License:


MIT License

Copyright (c) 2025 Sean Donahue

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

