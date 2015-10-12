%%%% ZRM_U3
clear all; close all;

%% Aufgabe 1
% define parameters
K1 = 1; 
T1 = 1;
K2 = 2;
T2 = 5;
K3 = 2;
T3 = 10;
K4 = 0.01;
% define subsystems
sys1 = tf([0 K1],[T1 1]);
sys2 = tf([0 K2],[T2 1]);
sys3 = tf([0 K3],[T3 1]);
sys4 = tf([0 K4],[1 0]);
% Step response of series network ot these 4 systems
sys_tot = series(sys4,series(sys3,series(sys1,sys2)));
figure(1);
step(sys_tot);

% Control the by hand calculated matrices
A = [-1/T1 0 0 0;K2/T2 -1/T2 0 0;0 K3/T3 -1/T3 0;0 0 K4 0];
b = [K1/T1 0 0 0]';
c = [0 0 0 1];
sys_hand = ss(A,b,c,0);
figure(2);
step(sys_hand);

%% Aufgabe 2
close all;
% define subsystems
sys1 = tf([0 2],[1 0]);
sys2 = tf([0 1],[1 1]);
sys3 = tf([0 0 0.8],[1 2 2]);

% Step response of network ot these 3 systems (1 & 2 in series and
% parallel to 3
sys_tot = parallel(sys3,series(sys1,sys2));
figure(3);
step(sys_tot);

% Control the by hand calculated matrices
A = [0 0 0 0;0 0 0 0;0 0 0 0;0 0 0 0];
b = [0 0 0 0]';
c = [0 1 -1 0];
sys_hand = ss(A,b,c,0);
figure(4);
step(sys_hand);

%% Aufgabe 3
close all;
A = [-1 2;-0.5 -3];
b = [1 0.5]';
c =[1 -2];
d = 0.5;
sys = ss(A,b,c,d);
G = tf(sys);

%% Aufgabe 4
% define matrices
A1 = [0 1;-1 -1];
b1 = [0 1]';
c1 = [2 0];
d1 = 0;
A2 = [0 1;-2 -3];
b2 = [0 1]';
c2 = c1;
d2 = d1;
% calculate k
k = 1/(1+d1*d2);
% calculate total system
A_tot = [A1-k*d2*(b1*c1), -k*(b1*c2); k*(b2*c1),A2-k*d1*(b2*c2)];
b_tot = [k*b1; k*d1*b2];
c_tot = [k*c1 -k*d1*c2];
d_tot = [k*d1];
sys_tot = ss(A_tot, b_tot, c_tot, d_tot);
G_tot = tf(sys_tot);
% control
sys_check=feedback(ss(A1,b1,c1,d1),ss(A2,b2,c2,d2),-1);
G_check = tf(sys_check);