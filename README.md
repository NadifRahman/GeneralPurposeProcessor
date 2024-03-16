# GeneralPurposeProcessor

This is a simple implementation of a general purpose processor that was created in 2023, in colloboration with Iftakher Hossain. The GPP was created using VHDL (Very High-Speed Integrated Circuit Hardware Description Language) and Quartus II software. The GPP can take two 8-bit binary numbers through switch inputs. The GPP can do various arithmitic and bitwise operations depending on which state the GPP is in. The states can be transistioned using a button. The output is displayed on a set of four 7-segment displays, two of which display the output as a two-digit hexadecimal number, one 7-segment is used for the signum, and another is used for the state.  The state can be reset using a switch. The GPP consists of various simulated hardware components, such as latches, decoders, finite state machines, an arithmitic logic unit and three 7-segment displays. 

## Functions
The following can be done on one or two 8-bit numbers at a time:
Calculate the difference of two 8 bit numbers, produce 2's complement, swap the lower bits of two 8-bit numbers, decrement by 5, invert bit-significance, shift bits to the left, increment by 3, and invert all bits of an input.  

## Physical demonstration
Please watch this video for a physical demonstration of the GPP. An altera FPGA board was used.
https://www.youtube.com/watch?v=oxegSPTuK34

