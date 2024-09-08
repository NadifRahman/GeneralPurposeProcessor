# General-Purpose Processor (GPP) Design

<p align="center">
  <img src="https://i.imgur.com/II5ml2A.png" alt="GPP Diagram" width="400"/>
 <div><a href="https://www.youtube.com/watch?v=oxegSPTuK34">Physical Demo</a></div>
</p>


## Overview

The **General-Purpose Processor (GPP)** is a digital circuit designed to handle a wide range of arithmetic and logic operations. Built using fundamental digital components such as latches, a finite-state machine (FSM), a 4:16 decoder, and an arithmetic logic unit (ALU), the processor can perform complex computations on 8-bit inputs and display the results on seven-segment displays.

The GPP is highly modular, with each component designed to function independently and collaboratively with other components. It is controlled by a clock signal and responds to user inputs, making it flexible and suitable for a variety of tasks, such as data processing, arithmetic operations, and logic comparisons.

## Key Components

The GPP is constructed using several distinct components, each serving a unique purpose in the processor's functionality. Below is a breakdown of the key components and their roles:

### 1. **Latches (Latch1 and Latch2)**

- **Function**: The latches serve as storage units within the GPP. They are used to hold the 8-bit input values that will be processed by the Arithmetic Logic Unit (ALU).
- **Operation**: The latch stores the 8-bit input data on each clock cycle and relays this data to the ALU. There are two identical latches, each capable of holding separate input values. These stored values are then passed along to the ALU when required.

### 2. **Finite-State Machine (FSM)**

- **Function**: The FSM is responsible for controlling the state transitions of the GPP. It serves as a counter, managing the flow of operations by controlling the clock cycles.
- **Operation**: The FSM follows the Moore Machine model, which counts from 0 to 8 using a 4-bit number. On each rising edge of the clock signal, the FSM sends a 4-bit output to the 4:16 decoder, controlling which microcode is executed in the ALU.

### 3. **4:16 Decoder**

- **Function**: The decoder serves as a selector for the operations that will be carried out by the ALU.
- **Operation**: The 4:16 decoder receives the 4-bit output from the FSM and maps it to a specific 16-bit microcode, which then tells the ALU which function to perform. The decoder cycles through these microcodes based on the state transitions in the FSM, allowing different operations to be selected during each clock cycle.

### 4. **Arithmetic Logic Unit (ALU)**

- **Function**: The ALU is the core component of the GPP that performs arithmetic and logic operations.
- **Operation**: Based on the microcode received from the 4:16 decoder, the ALU carries out operations such as addition, subtraction, and Boolean logic on two 8-bit input values. The results are then sent to the output, and in some cases, displayed on a seven-segment display. The ALU is designed to handle a variety of operations, selected by the user through control inputs.

## Detailed Component Descriptions

### Latches

The latches are used to store data temporarily. In the GPP, two latches are used, Latch1 and Latch2, each holding an 8-bit input value. These values are stored and then passed along to the ALU for processing. The latches are synchronized with the clock, meaning that they only update their values at specific intervals, allowing the processor to manage multiple operations in a controlled manner.

### Finite-State Machine (FSM)

The FSM in this design is a Moore machine, which counts from 0 to 8, producing a unique 4-bit number at each state. This output is used by the 4:16 decoder to select the appropriate microcode for the ALU. The FSM ensures that the GPP follows a predictable sequence of operations, which is essential for ensuring the correct timing and execution of instructions.

### 4:16 Decoder

The decoder plays a crucial role in determining which operation the ALU will perform. It takes the 4-bit output from the FSM and decodes it into one of 16 possible microcodes. These microcodes correspond to different functions that the ALU can carry out, such as addition, subtraction, logical operations, etc.

### Arithmetic Logic Unit (ALU)

The ALU is the heart of the GPP. It takes the two 8-bit input values from the latches and performs the operation dictated by the microcode from the 4:16 decoder. The result of the operation is then outputted, with the option to display the result on a seven-segment display. The ALU is capable of handling both arithmetic (e.g., addition, subtraction) and logical operations (e.g., AND, OR, NOT).

## System Flow

1. **Input Storage**: The two 8-bit inputs are stored in Latch1 and Latch2.
2. **State Transition**: The FSM cycles through different states, counting from 0 to 8. Each state corresponds to a unique 4-bit number.
3. **Microcode Selection**: The 4-bit output from the FSM is sent to the 4:16 decoder, which generates a corresponding 16-bit microcode.
4. **ALU Operation**: The ALU receives the 8-bit inputs and the microcode, then performs the appropriate operation (addition, subtraction, logic).
5. **Result Output**: The result of the ALU operation is outputted and, if needed, displayed on a seven-segment display.

## Features

- **Latch-Based Storage**: Two 8-bit inputs are stored in latches and processed by the ALU in a controlled, clock-driven manner.
- **Finite-State Machine**: The FSM ensures the GPP transitions smoothly between states, enabling the correct operation sequence.
- **4:16 Decoder**: The decoder acts as the decision-making unit, selecting which operation the ALU performs.
- **ALU Operations**: The ALU supports a wide range of arithmetic and logical operations, all of which are controlled by microcode input.
- **Seven-Segment Display**: The results of the ALU's operations can be visualized on a seven-segment display, making it easier to understand the processor's output.

## Future Improvements

The current GPP design provides a functional processor for general-purpose tasks, but several enhancements can be made in future iterations:

- **Extended Functionality**: Expanding the ALU to handle more complex operations, such as multiplication or division.
- **Memory Integration**: Adding memory components to allow the GPP to store and retrieve data across multiple operations.
- **Improved User Interaction**: Creating more user-friendly input methods, such as switches or buttons, to control the FSM and input data.
- **Higher Bit-Width Operations**: Extending the design to support 16-bit or 32-bit operations for more advanced processing tasks.
- **Optimization**: Streamlining the decoder and FSM logic to reduce processing time and increase the efficiency of the GPP.


