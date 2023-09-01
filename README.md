# VLSI Physical Design for ASICs
The objective of VLSI (Very Large Scale Integration) physical design for ASICs (Application-Specific Integrated Circuits) is to transform a digital circuit's logical representation into a physical layout that meets various performance, power, area, and manufacturability requirements.
# SKILL OUTCOMES
+ Architectural Design
+ RTL Design / Behavioral Modeling
+ Floorplanning
+ placement
+ clock Tree Synthesis
+ Routing
# INSTALLATION
<details>
<summary> RISC-V toolchain </summary>
  
https://github.com/kunalg123/riscv_workshop_collaterals/blob/master/run.sh

* Download the run.sh
  
* Open terminal

* cd Downloads

* ./run.sh
</details>
<details>
<summary> Yosys </summary>
  
* Download yosys.sh from the repo

* Open terminal and go to the directory where yosys.sh is present

* run the commands `chmod +x yosys.sh` `./yosys.sh`
</details>

# TABLE OF CONTENTS
## DAY 1 
1. Introduction to Basic Keywords
  - Introduction
  - From Apps to Hardware
  - Detail Description of Course Content
2. Labwork for RISCV Toolchain
  - C Program
  - RISCV GCC Compiler and Dissemble
  - Spike Simulation and Debug
3. Integer Number Representation
  - 64-bit Unsigned Numbers
  - 64-bit Signed Numbers
  - Labwork For Signed and Unsigned Numbers

<h2>  ISA (Instruction Set Archhitecture) <h6>
  - ISA defines the interface between a computer's hardware and its software, specifically how the processor and its components interact with the software instructions that drive the execution of tasks.
  - It encompasses a set of instructions, addressing modes, data types, registers, memory organization, and the mechanisms for executing and managing instructions.

- **RISC-V (Reduced Instruction Set Computing - Five)**.
  - It is an open-source Instruction Set Architecture (ISA) that has gained significant attention and adoption in the world of computer architecture and semiconductor design.
  - RISC architectures simplify the instruction set by focusing on a smaller set of instructions, each of which can be executed in a single clock cycle. This approach usually leads to faster execution of individual instructions. 

<img width="536" alt="image" src="https://github.com/Veda1809/pes_asic_class/assets/142098395/4eabe0b7-4581-419b-88e7-84c7ac1dac8e">

## From Apps to Hardware
1. **Apps:** Application software, often referred to simply as "applications" or "apps," is a type of computer software that is designed to perform specific tasks or functions for end-users.
2. **System software:** System software refers to a category of computer software that acts as an intermediary between the hardware components of a computer system and the user-facing application software. It provides essential services, manages hardware resources, and enables the execution of application programs. System software plays a critical role in maintaining the overall functionality, security, and performance of a computer system.'
3. **Operating System:** The operating system is a fundamental piece of software that manages hardware resources and provides various services for both users and application programs. It controls tasks such as memory management, process scheduling, file system management, and user interface interaction. Examples of operating systems include Microsoft Windows, macOS, Linux, and Android.

4. **Compiler:** A compiler is a type of software tool that translates high-level programming code written by developers into assembly-level language.

5. **Assembler:** An assembler is a software tool that translates assembly language code into machine code or binary code that can be directly executed by a computer's processor.

6. **RTL:** RTL serves as an abstraction level in the design process that represents the behavior of a digital circuit in terms of registers and the operations that transfer data between them.

 7. **Hardware:** Hardware refers to the physical components of a computer system or any electronic device. It encompasses all the tangible parts that make up a computing or electronic device and enable it to perform various tasks.

## Detail Description of Course Content
**Pseudo Instructions:** Pseudo-instructions are used to simplify programming, improve code readability, and reduce the number of explicit instructions a programmer needs to write. They are especially useful for common programming patterns that involve multiple instructions.
`Ex: li, mv`.

**Base Integer Instructions:** The term "base integer instructions" refers to the fundamental set of instructions that form the foundation for performing basic arithmetic, logical, and data movement operations.
`Ex: add, sub, and, or, xor, sll`.

**Multiply Extension Intructions:** The RISC-V architecture includes a set of multiply and multiply-accumulate (MAC) extension instructions that enhance the instruction set to perform efficient multiplication and multiplication-accumulate operations.
`Ex: mul, mulh, mulhu, mulhsu`.

**Single and Double Precision Floating Point Extension:** The RISC-V architecture includes floating-point extensions that provide support for both single-precision (32-bit) and double-precision (64-bit) floating-point arithmetic operations. These extensions are often referred to as the "F" and "D" extensions, respectively. Floating-point arithmetic is essential for handling real numbers with fractional parts and for performing accurate calculations involving decimal values.

**Application Binary Interface:** ABI stands for "Application Binary Interface." It is a set of rules and conventions that govern how software components interact with each other at the binary level. The ABI defines various aspects of program execution, including how function calls are made, how parameters are passed and returned, how memory is allocated and managed, and more.

**Memory Allocation and Stack Pointer** 
- Memory allocation refers to the process of assigning and managing memory segments for various data structures, variables, and objects used by a program. It involves allocating memory space from the system's memory pool and releasing it when it is no longer needed to prevent memory leaks.
- The stack pointer is a register used by a program to keep track of the current position of the program's execution on the call stack. 
# COURSE 
 ## LAB 1

### C Code
- Open your terminal and run the following command to create a  ```.c```  file.

- ![Screenshot from 2023-08-22 01-49-08](https://github.com/Spoorthi-03/pes_asic_class/assets/65489057/bdfb746c-e490-45ae-a4db-f34fc032f0d1) 

 ![Screenshot from 2023-08-22 01-12-46](https://github.com/Spoorthi-03/pes_asic_class/assets/65489057/189328a4-8742-4a57-a8d6-f31f7a57eb33)
- ## RISCV GCC Compiler and Dissemble

Using the riscv gcc compiler `riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sumton.o sumton.c`, we compiled the C program.
![Screenshot from 2023-08-22 01-13-51](https://github.com/Spoorthi-03/pes_asic_class/assets/65489057/f85c716b-0d09-4c72-8408-f1201dd2def6)


`spike pk sumton.o` is used to check whether the instructions produced are right to give the correct output.
`spike -d pk sumton.c` is used for debugging.
The contents of the registers can also be viewed.



![Screenshot from 2023-08-22 01-14-22](https://github.com/Spoorthi-03/pes_asic_class/assets/65489057/4de16a7a-7b14-4ee7-855a-72528d5cc397)


![Screenshot from 2023-08-22 01-10-52](https://github.com/Spoorthi-03/pes_asic_class/assets/65489057/e82859fd-b7ab-4423-bf9a-d1d119f0b635)

## LAB 1

# Integer Number Representation 
## Unsigned Numbers
- Unsigned numbers, also known as non-negative numbers, are numerical values that represent magnitudes without indicating direction or sign.
- Range: 0 to 2^(N) - 1.

  
![Screenshot from 2023-08-29 20-14-08](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/8386d3bb-d8b5-4e09-b1d5-ccd27c61fb4f)
 

![Screenshot from 2023-08-29 20-13-36](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/79adf0db-5be2-43f3-82cb-7a0b6f7efa49)
## Signed Numbers
- Signed numbers are numerical values that can represent both positive and negative magnitudes, along with zero.
- Range : -(2^(N-1)) to 2^(N-1) - 1.


![Screenshot from 2023-08-29 20-20-48](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/bb7d4ba5-1362-4e6b-8dfe-65f5edf22a06)

![Screenshot from 2023-08-29 20-22-26](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/d8932699-9075-4eee-9cf3-6bb08193aff8)

## DAY 2

## Introduction to ABI
+ An Application Binary Interface (ABI) is a set of rules and conventions that dictate how binary code interacts with and communicates with other binary code, typically at the level of machine code or compiled code. In simpler terms, it defines the interface between two software components or systems that are written in different programming languages, compiled by different compilers, or running on different hardware architectures.
+ The ABI is crucial for enabling interoperability between different software components, such as different libraries, object files, or even entire programs. It allows components compiled independently and potentially on different platforms to work seamlessly together by adhering to a common set of rules for communication and data representation.
## Memmory Allocation for Double Words
64-bit number (or any multi-byte value) can be loaded into memory in little-endian or big-endian. It involves understanding the byte order and arranging the bytes accordingly
1. **Little-Endian:**
In little-endian representation, you store the least significant byte (LSB) at the lowest memory address and the most significant byte (MSB) at the highest memory address.
2. **Big-Endian:**
In big-endian representation, you store the most significant byte (MSB) at the lowest memory address and the least significant byte (LSB) at the highest memory address.

![Screenshot from 2023-08-25 09-56-55](https://github.com/Spoorthi-03/pes_asic_class/assets/65489057/893008d9-0fd7-47e8-9457-710af9c4622f)

![Screenshot from 2023-08-25 09-58-43](https://github.com/Spoorthi-03/pes_asic_class/assets/65489057/4d39bbd8-57b6-4530-a2d5-c6508cb9ce2d)

### RISC-V Instructions:
RISC-V instructions can be categorized into different categories based on their functionality. Here are some common types of RISC-V instructions:
- **R-Type Instructions:** These are used for arithmetic and logic operations between two source registers, storing the result in a destination register. Common R-type instructions include:
  - `add`: Addition
  - `sub`: Subtraction
  - `and`: Bitwise AND
  - `or`: Bitwise OR
  - `xor`: Bitwise XOR
  - `slt`: Set Less Than (signed)
  - `sltu`: Set Less Than (unsigned)
- **I-Type Instructions:** These are used for arithmetic and logic operations that involve an immediate value (constant) and a source register. Common I-type instructions include:
  - `addi`: Add Immediate
  - `andi`: Bitwise AND with Immediate
  - `ori`: Bitwise OR with Immediate
  - `xori`: Bitwise XOR with Immediate
  - `lw`: Load Word (load data from memory)
  - `sw`: Store Word (store data to memory)
  - `beq`: Branch if Equal
  - `bne`: Branch if Not Equal
- **S-Type Instructions:** These are similar to I-type instructions but are used for storing values from a source register into memory. Common S-type instructions include:
  - `sb`: Store Byte
  - `sh`: Store Halfword
  - `sw`: Store Word
- **U-Type Instructions:** These are used for setting large immediate values into registers or for jumping to an absolute address. Common U-type instructions include:
  - `lui`: Load Upper Immediate (set the upper bits of a register)
  - `auipc`: Add Upper Immediate to PC (used for address calculations)
- J-Type Instructions: These are used for jumping or branching to different program locations. Common J-type instructions include:
  - `jal`: Jump and Link (used for function calls)
  - `jalr`: Jump and Link Register (used for function calls)
- **F-Type and D-Type Instructions (Floating-Point):** These instructions are used for floating-point arithmetic and include various operations like addition, multiplication, and comparison. These instructions typically have an 'F' or 'D' prefix to indicate single-precision or double-precision floating-point operations.
  - `fadd.s`: Single-precision floating-point addition
  - `fmul.d`: Double-precision floating-point multiplication
  - `fcmp.s`: Single-precision floating-point comparison
- **RV64 and RV32 Variants:** RISC-V can be configured in different bit-widths, with RV64 being a 64-bit architecture and RV32 being a 32-bit architecture. Instructions for these variants have slightly different encoding to accommodate the different data widths.
![instr](https://devopedia.org/images/article/110/3808.1535301636.png)
RISC-V instructions have a common structure with several fields that serve different purposes. The specific fields may vary depending on the type of instruction (R-type, I-type, S-type, U-type, etc.), but here are the typical fields you'll find in a RISC-V instruction:
- **Opcode (OP):** The opcode field specifies the operation to be performed by the instruction. It indicates what type of instruction it is (e.g., arithmetic, load, store, branch) and what specific operation within that type is being carried out.
- **Destination Register (rd):** This field specifies the destination register where the result of the instruction should be stored. In R-type instructions, this is often the first source register. In I-type and S-type instructions, this is sometimes used to specify the target register.
- **Source Register(s) (rs1, rs2):** These fields specify the source registers for the operation. For R-type instructions, rs1 and rs2 are typically the two source registers. In I-type and S-type instructions, rs1 is the source register, and immediate values may be used in place of rs2.
- **Immediate (imm):** The immediate field contains a constant value that is used as an operand in I-type and S-type instructions. This value can be an immediate constant, an offset, or an immediate value for arithmetic or logical operations.
- **Function Code (funct3, funct7):** In R-type and some I-type instructions, these fields further specify the operation. funct3 typically selects a particular function within an opcode category, and funct7 may provide additional information or further differentiate the instruction.
- **Extension-specific Fields:** Depending on the RISC-V extension being used (e.g., F for floating-point, M for integer multiplication/division), there may be additional fields to accommodate the specific requirements of that extension. These fields are not part of the base RISC-V instruction format.
### Register Naming in RISC-V according to ABI
![abi-reg](https://web.eecs.utk.edu/~smarz1/courses/ece356/notes/risc/imgs/regfile.png)



## DAY 3
![Screenshot from 2023-08-27 14-15-17](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/1593d346-196f-4030-9b4b-41ecd033adad)

![Screenshot from 2023-08-27 14-12-32](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/6976d135-ab26-4533-abf0-c5c22d3d6611)

![Screenshot from 2023-08-27 14-07-16](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/fe9465cc-dc3a-481f-85cc-b979ab22ad89)

![Screenshot from 2023-08-27 14-06-04](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/27cd1ded-c391-4989-a949-803190414c50)

![Screenshot from 2023-08-27 13-02-20](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/f64c1377-3730-44dd-af2b-33f896e7053c)

![Screenshot from 2023-08-27 13-00-45](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/c7ce5476-6998-4127-aa43-cad7c3a03dd4)


![Screenshot from 2023-08-27 12-46-54](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/c7336e29-a436-4342-8ebb-ff9480d247f3)


![Screenshot from 2023-08-27 12-46-32](https://github.com/Spoorthi-03/pes_asics_class/assets/65489057/5d42d255-4a5f-4945-a4bc-5f9993cd3731)
