***IC Design***  ***Homework # 2***

Due on 10/19/2023, 9:20 online 

Plagiarism is not allowed. 10% penalty for each day of delay.![image]([Aspose.Words.7faa3009-5f86-483b-ae22-53f8b2f7016e.001.png](https://github.com/ptchan/Integrated-Circuit-Design-Project1/blob/main/Aspose.Words.7faa3009-5f86-483b-ae22-53f8b2f7016e.001.png))

In this homework, you will learn the following:  

- Hspice  
- nWave 
1. **(70%)**  

   **Two** of the following cells are assigned to each of you. **Everyone must do cell (10). Those whose student ID ends with '*k*' must also do cell *k*.** (Ex. If your ID is Bxx901123, you need to do (3) EO3, (10) FA1.) 

0) EN 
0) NR2 
0) OR2 
0) EO3 
0) AN3 
0) ND2  
0) AN2 
0) EO 
0) DRIVER 
0) IV 
0) FA1  

For each cell,  

1. Base on the layout view, draw **transistor-level** diagrams (using PowerPoint, paint or  手畫)  
1. Identify all **inputs** and **outputs**  
1. List **truth table**  
1. Revise the given netlist file to construct your cells. All PMOS transistors have width 0.5um and length 0.1um. All NMOS transistors have width 0.25um and length 0.1um. Parameters of the 90nm model file (90nm\_bulk.l) must be included during the simulation. The substrate of PMOS is connected to VDD and the substrate of NMOS is connected to VSS.  
1. Run *Hspice* simulation on **all possible input** combinations. Assume 

VDD=1.0V and VSS=0V. Use *nWave* to verify the truth table. Copy the **I/O waveform** to your report. State what you have observed.  

6. Please discuss the problems you have encountered.  

**Files that you will need (available on the class website)**  HW2\_2023.zip includes the following files  

- HW2\_2023.pdf (this document)  
- HW2\_tutorial\_2023.pdf 
- example.sp (CMOS inverter的範例程式) 
- 90nm\_bulk.l 
- Pictures of layouts (in “pic” folder)  

**Files that you need to submit** 

- Your report named StudentID\_hw2\_report.pdf (ex: b05901058\_hw2\_report.pdf ) 
  - List the names of the cells you did in homework. 
  - The inputs, outputs, transistor-level diagrams, and truth tables of the cells you did in homework 
  - The waveform results of your HSpice simulation 
  - The answers to the following problems 2. and 3. 
- The HSpice codes named after the cell names 

  **References**  

1. “SPICE,” CIC handout, 2001  
1. ”鳥哥的 Linux 私房菜,” [http://linux.vbird.org/ ](http://linux.vbird.org/)

If there’s any workstation account/password problem, please directly contact the workstation administrator，林明廣，f[09943114@ntu.edu.tw ](mailto:f09943114@ntu.edu.tw)

2. **(20%)** In Chapter 3, we analyzed the rising and falling delays of a NAND3 gate with fanout *h* (slide 10 of Chapter 3). 
1. Following a similar approach, for the single-stage CMOS static gate with logic Y=[(A+B)C]’, where L=1 for all transistors, **draw the circuit** and **specify the inputs and the W** for all transistors that balance the rising and falling delays. 
1. Derive the falling and rising delays of the gate assuming *h* = 0. (consider the worst case) 
3. **(10%)** Determine the activity factors at each node in the following circuit assuming the input probabilities  = = = = 0.5.  (be careful with the dependency) 

   ![image](https://github.com/ptchan/Integrated-Circuit-Design-Project1/blob/main/Aspose.Words.7faa3009-5f86-483b-ae22-53f8b2f7016e.002.png)

TA：陳帝宇，EE2-329 

TA email: tp62u4m3@gmail.com 

HW2 Office hours:  10/16 14:00-16:00 @ EE2-329 

10/18 14:30-16:30 @ EE2-329 

If you have no time during office hours, you can email TA to discuss another time for an appointment.
