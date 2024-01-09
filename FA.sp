*********************************************
.inc '90nm_bulk.l'
.SUBCKT Inv DVDD GND In Out
*.PININFO DVDD:I GND:I In:I Out:O
MM1 Out In GND GND NMOS l=0.1u w=0.25u m=1
MM2 Out In DVDD DVDD PMOS l=0.1u w=0.5u m=1
.ENDS

.SUBCKT Cout_Stage DVDD GND In_A In_B Cin Out_C
MM3 C1 In_B DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM4 Out_C In_A C1 DVDD PMOS l=0.1u w=0.5u m=1
MM5 Out_C In_A C2 GND NMOS l=0.1u w=0.25u m=1
MM6 C2 In_B GND GND NMOS l=0.1u w=0.25u m=1
MM7 C3 In_A DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM8 C3 In_B DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM9 Out_C Cin C3 DVDD PMOS l=0.1u w=0.5u m=1
MM10 Out_C Cin C4 GND NMOS l=0.1u w=0.25u m=1
MM11 C4 In_A GND GND NMOS l=0.1u w=0.25u m=1
MM12 C4 In_B GND GND NMOS l=0.1u w=0.25u m=1
.ENDS

.SUBCKT S_Stage1 DVDD GND In_A In_B Out_S1
MM13 S1 In_A GND GND NMOS l=0.1u w=0.25u m=1
MM14 S1 In_A DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM15 Out_S1 In_B S1 DVDD PMOS l=0.1u w=0.5u m=1
MM16 In_B S1 Out_S1 DVDD PMOS l=0.1u w=0.5u m=1
MM17 In_B In_A Out_S1 GND NMOS l=0.1u w=0.25u m=1
MM18 Out_S1 In_B In_A GND NMOS l=0.1u w=0.25u m=1
.ENDS

.SUBCKT S_Stage2 DVDD GND Cin Out_S1 Out_S2
MM19 S2 Cin DVDD DVDD PMOS l=0.1u w=0.5u m=1
MM20 Out_S2 Out_S1 Cin DVDD PMOS l=0.1u w=0.5u m=1
MM21 S3 Cin Out_S2 DVDD PMOS l=0.1u w=0.5u m=1
MM22 S3 S2 Out_S2 GND NMOS l=0.1u w=0.25u m=1
MM23 Out_S2 Out_S1 S2 GND NMOS l=0.1u w=0.25u m=1
MM24 S2 Cin GND GND NMOS l=0.1u w=0.25u m=1
.ENDS
*********************************************


Vdd DVDD    0   1.0
Vss GND     0   0

Vin_A In_A      0   pulse (0 1.0 0.5u 100n 100n 0.4u 1u)
Vin_B In_B      0   pulse (0 1.0 0.5u 100n 100n 0.4u 1u)
Vin_Cin Cin      0   pulse (0 1.0 0 100n 100n 0.4u 1u)

xCout_Stage DVDD GND In_A In_B Cin Out_C Cout_Stage
xInv_1 DVDD     GND Out_C  Cout     Inv

xS_Stage1 DVDD GND In_A In_B Out_S1 S_Stage1
xS_Stage2 DVDD GND Cin Out_S1 Out_S2 S_Stage2
XInv_2 DVDD GND Out_S2 S Inv


.tran 10n 2.1u
.op
.option post
.end
