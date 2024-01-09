*********************************************
.inc '90nm_bulk.l'
.SUBCKT Inv DVDD GND In Out
*.PININFO DVDD:I GND:I In:I Out:O
MM1 Out In GND GND NMOS l=0.1u w=0.25u m=1
MM2 Out In DVDD DVDD PMOS l=0.1u w=0.5u m=1
.ENDS

.SUBCKT First_Stage DVDD GND In_A In_B Out1
MM3 Out1 In_A DVDD DVDD PMOS l=0.1u w=0.5u m=1
.ENDS

.SUBCKT Second_Stage DVDD GND In_A In_B In_C Out2
MM4 Out2 In_B In_A DVDD PMOS l=0.1u w=0.5u m=1
MM5 In_B In_A Out2 DVDD PMOS l=0.1u w=0.5u m=1
MM6 In_B In_C Out2 GND NMOS l=0.1u w=0.25u m=1
MM7 Out2 In_B In_C GND NMOS l=0.1u w=0.25u m=1
MM8 In_C In_A GND GND NMOS l=0.1u w=0.25u m=1
.ENDS
*********************************************


Vdd DVDD    0   1.0
Vss GND     0   0

Vin_A In_A      0   pulse (0 1.0 0 100n 100n 0.4u 1u)
Vin_B In_B      0   pulse (0 1.0 0.5u 100n 100n 0.4u 1u)

xFirst_stage DVDD GND In_A In_B Out1 First_Stage
xSecond_stage DVDD GND In_A In_B Out1 Out2 Second_Stage
xInv DVDD     GND Out2  Out     Inv

.tran 10n 2.1u
.op
.option post
.end
