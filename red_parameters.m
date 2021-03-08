
clc
clear
% variables


Nm = 2; % No of membranes in series
T = 298; % absolute temperature (K)
r_sea = 1; % activity coeefficients of sea at temperature T
r_river = 1; % activity coefficient of river at temperature T.
C_sea = 0.510; % Concentration of sea water at membrane interface (mol/litre)
C_river = .017; % Concentration of river water at the membrane interface (mol/litre)

R_AEM = 1; % area resistance of anion exhange membrane (ohm-m2)
R_CEM = 1; % area resistance of cation exhange membrane (ohm-m2)

beta = 0.7; % mask fraction
e = 0.7 ; % porosity
k_sea = 5; % electrolyte conductivity (S/m)
k_river = 50e-3; % electrolyte conductivity (S/m)

R_electrodes = 2; % ohmic resistance of both the electrodes and its compartments (ohm-cm2)
h_sea = 60e-6; % intermembrane distance (m)
h_river = 60e-6; % intermemnrane distance (m)
t_res  = 100; % residence time (s)
L = 0.1; % cell length(m)
SspVsp = 8/h_sea;
m_v = 0.0008891; % viscosity of water in SI units.




% Constants

R = 8.31; % Universal Constant (J/(mol-K))
z = 1; % valency of ions
F = 96485; % faraday constant
alpha =1; % membrane permselectivity



%%% Graphene variable

Vg = 1.2; % voltage applied across graphene.
mu = (F*Vg/2)/(R*T);
ml = 100e-10; % membrane length

%cation

D_Na =12.12*1e-10;
PA_Na = D_Na/ml;
jA_Na = (mu*PA_Na)*(C_river - C_sea * exp(mu))/(1-exp(mu));
R_Na = (Vg/2)/(jA_Na);

R_CEM = R_Na;


%anion

D_cl =17.71*1e-10;
PA_cl = D_cl/ml;
jA_cl = (mu*PA_cl)*(C_river - C_sea * exp(mu))/(1-exp(mu));
R_cl = (Vg/2)/(jA_cl);
R_AEM = R_cl;


