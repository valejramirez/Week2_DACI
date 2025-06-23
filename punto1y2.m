LEVEL   = 1;
VTOn    = 0.7;           %(V)        -> Tensión umbral
VTOp    = 0.8;           %(V)        -> Tensión umbral
GAMMA   = 0.45;          %(V^1/2)    -> Coeficiente de cuerpo
PHI     = 0.9;           %(V)        -> Potencial ? (? 2F)
NSUB    = 9e14;          %(cm^-3)    -> Dopaje del sustrato
LD      = 0.08e-6;       %(m)        -> Longitud de difusión (fuente/drenaje)
UON     = 350e-4;           %(cm^2/V·s) -> Movilidad de portadores
UOP     = 100e-4;           %(cm^2/V·s) -> Movilidad de portadores
LAMBDAn  = 0.1;          %(V^-1)     -> Modulación de longitud de canal
LAMBDAp  = 0.2;          %(V^-1)     -> Modulación de longitud de canal
TOX     = 9e-9;          %(m)        -> Espesor del óxido
PB      = 0.9;           %(V)        -> Potencial de unión
CJ      = 0.56e-3;       %(F/m^2)    -> Capacitancia de unión por área
CJSW    = 0.35e-11;      %(F/m)      -> Capacitancia de unión lateral
MJ      = 0.45;          %(unitless) -> Exponente de CJ
MJSW    = 0.2;           %(unitless) -> Exponente de CJSW
CGDO    = 0.4e-9;        %(F/m)      -> Capacitancia solapamiento puerta-drenaje 
JS      = 1.0e-8;        %(A/m^2)    -> Corriente de fuga por unidad de área
Vds     = 3;             %V
Cox     = 3836e-6;       %F/m^2
Vdd     = 3              %V

W=50; 
L1=0.5; 
L2=2; 
id1=0.5; %mA 
id2=0.5; %mA
ro=20;

%Question 1: 
a = 0.5*UON*Cox*(W/L1)*1000 % = 6.713(mA/V^2) ;

%Question 2
b = 0.5*UOP*Cox*(W/L2)*1000 % = 0.479504(mA/V^2);
ro=20;Rd=2;
Rs=0.2;%Kohm
%Question 3 
Vgs1=VTOn + sqrt((2*id1*10^-3)/(UON*Cox*(W/L1))) % = 0.9729 (V)

%Question 4

%Question 5
Vgs2=VTOp + sqrt((2*id2*10^-3)/(UOP*Cox*(W/L2))) % = -1.8212 (V)

%Question 6
gm2 = sqrt(2*UOP*Cox*1000*(W/L2)*id2) % = 0.9793(mA/V) 

%Question 7 
ron = 1/(LAMBDAn*id1) % = 20 kohms

%Question 8 
rop = 1/(LAMBDAp*id2) % = 10 kohms 

%Question 9 
Av = -gm1*((ron*rop)/(ron+rop)) % = -24.4277 V/V

%Question 10 
Vo_max = Vdd +(-Vgs2+VTOp) % = 1.9788 V  

%Question 11 
Vo_min = Vgs1 - VTOn % = 0.2729 V 
PROBLEMA 3.24:
ro=20;Rd=2;
Rs=0.2;%Kohm
 gm1 = sqrt(2*UON*Cox*1000*(W/L1)*id1 * (1+LAMBDAn*1.9)) ;% = 3.9971 (mA/V) 
 Rout= (1+ gm1*Rs)*ro;
 GM= gm1*ro /( Rs+Rout);
 Av= (-gm1*ro*Rd)/(Rd+Rs+ro+(gm1*Rs*ro))
VGS= sqrt(2*id1/(UON*Cox*1000*(W/L1)*(1+LAMBDAn*1.9))) + VTOn

