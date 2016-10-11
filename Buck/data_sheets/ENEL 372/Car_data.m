clear, clc, close all

Low_L_current = [0.04680,0.04444,0.04250,0.04117,0.03918,0.03734];
Low_L_voltage = [0.49027,3.340,6.205,7.8,9.449,11.189];
Low_L_Power = Low_L_current.*Low_L_voltage;

Med_L_current = [0.22632,0.23905,0.24600,0.23918,0.23819,0.23928,0.23728,...
    0.23436,0.23098,0.22672,0.22305,0.22031,0.21427,0.18070,0.14672,...
    0.102667,0.080013,0.065056];
Med_L_voltage = [0.10549,12.007,12.642,13.233,13.490,14.046,14.484,15.062,...
    15.519,16.017,16.637,17.052,17.460,18.007,18.868,19.181,19.321,19.368];
Med_L_Power = Med_L_current.*Med_L_voltage;

Hi_L_current = [0.39841,0.34989,0.34648,0.34049,0.33725,0.32240,0.33283,...
    0.32976,0.31968,0.28455,0.20052,0.14573,0.098006,0.081,0.065905];
Hi_L_voltage = [0.16362,15.061,15.547,16.108,16.390,16.853,16.996,17.235,...
    17.644,17.968,18.487,18.868,19.181,19.312,19.368];
Hi_L_Power = Hi_L_current.*Hi_L_voltage;
Max_power = max(Hi_L_Power)

wheel_speed = [1 3 4.5 5 6 7 8 8.5 9 8];
wheel_torque = [10 9 8 7 6 5 4 3 2 1];
wheel_power = wheel_speed.*wheel_torque;

hold on

plot(Low_L_voltage,Low_L_current,'b')
plot(Med_L_voltage,Med_L_current,'r')
plot(Hi_L_voltage,Hi_L_current,'g')
plot(Med_L_voltage,Med_L_Power,'m')
plot(Hi_L_voltage,Hi_L_Power,'k')

legend('Low light level current','Medium light level current','High light level current','Medium light level power','High light level power') 


grid on 

% plot(wheel_speed, wheel_torque)
% plot(wheel_speed, wheel_power)























