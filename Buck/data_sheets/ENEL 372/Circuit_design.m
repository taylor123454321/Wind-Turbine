clc; clear; close all;

% Input Variables
vs = [24 48]; % input voltage from solar panel in Volts
v0 = 12; % target output voltage for motor in Volts
i0 = [41 83]; % target output current for motor in Amps
f = 50000; % switching frequency in Hz
T = 1/f; % switching period
Ipp = 0.05*i0; % peak-peak current in Amps
beta = 0.3; % Magnetic saturation
ur = 1600; % another constant
A = 63e-6; % area of coil core in m^2

Ipeak = i0 + Ipp/2; % peak current into motor

D = v0./vs % duty cycle (continuous operation)

%Inductor Calculations

L = (vs.*D.*(1.-D))./(f.*Ipp); % inductor inductance
%AP = ((L*Ipeak*i0)/(beta*0.03))^(4/3) %cm^2

L*1000*1000
%N = ceil((L*Ipeak)/(beta*A)) %number of turns (rounded up)

%Reluct = N^2/L; %reluctance of inductor
%do we need an air gap? -->



%vac_perm = 4*pi*(10^-7); % permeability of vacuum

%no air gap
%dist_nogap = Reluct*(vac_perm*ur*A)

%air gap
%dist_gap = Reluct*(vac_perm*A)

capacitor_v0 = (1-D)./(8.*f^2.*L.*0.2)
capacitor_v0*1000*1000

ripple = (1-D)/(8*f^2*L*3.3e-06)

1/(2/0.22)+1/(2/0.22)+1/(2/0.22)+1/(2/0.22)
1/(2/0.39)+1/(2/0.39)+1/(2/0.39)

