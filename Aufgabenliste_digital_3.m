%% Aufgabe 3
close all;
%% define system parameters
K_p_sys = 2; 
time_const = 1;
T_s = 1/10;
%sample time T_s = T/2 oder besser T/10

%% define Controller parameters
K_p_contr = 2;
K_d_contr = 1;
K_i_contr = 1;
%% define System (current: PT1)
G=tf([K_p_sys],[time_const,1]);

%% define controller
Regler = PID_Function(K_p_contr, K_i_contr, K_d_contr);

%% run simulation
sim('Aufgabenliste_digital_3_simulink');

%% plot figures
figure (1)
plot(step.time, step.signals.values,'r',...
     sysout.time, sysout.signals.values,'b');
legend('Eingangssignal','Ausgangssignal');
xlabel('Time (s)');
title('PT1 System');
