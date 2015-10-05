%%%% ZRM_U2
clear all; close all;

%% Aufgabe 1
%define Parameters
R = 10;
L = 50*10^(-6);
C = 3.3*10^(-6);
init_freq = 1;
end_freq = 10000;

% simulate
sim('ZRM_U2A1');

% plot
figure(1);
plot(i_out.time,i_out.signals.values,'r');

%% Aufgabe 2
z = [1 3 5 -2];
n = [1 -3 2 1 9];

%b)
sys=tf(z,n);
sys_ss = ss(sys); % statespace, transformieren in Zustandsraum
% sys_ss.a
sys_canon=canon(sys);
% sys_canon.a

