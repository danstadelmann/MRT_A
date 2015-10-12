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
% a)
z = [5 0 -3];
n = poly([-1 -2 -5 -7]);

%b)
sys=tf(z,n);
% simulate
sim('ZRM_U2A2');
figure(2);
plot(out.time, out.signals.values,'r');
title('Sprungantwort des Systems auf einen Schritt der grösse 10');
xlabel('Zeit'); ylabel('Amplitude');
%coment the following line to see plot
close all;
% c)
sys_ss = ss(sys); % statespace, transformieren in Zustandsraum
%sys_ss.a 
%sys_ss.b % eine Art Beobachtungsnormalform doch noch umrechnen
%sys_ss.c
%sys_ss.d

% d)
eig_A = eig(sys_ss.a);

% e)
sys_zpk = zpk(sys);
zplane(z,n);
% system gain - k-Value
gain = sys_zpk.k; % gain = 5;
% ns = roots(zpk.p); funktioniert nicht, da class instance

% f)
% liefert ein sysBNF in Beobachtungsnormalform
[sysBNF,TB]=canon(sys_ss,'companion');


%% Aufgabe 3
% comment following line to see plots from ex 1 and 2
close all;
sim('ZRM_U2A3');
sim('ZRM_U2A3_BNF');
% a)
G = tf([5 -3 2],[1 2 5 3]);
sysRNF = canon(G, 'modal');

% c)
[y,t,x,ysd] = step(sysRNF);
figure(3);
step(G);
figure(4);
plot(A3out.time, A3out.signals.values,'r');
title('Step Response RNF');
xlabel('Time'); ylabel('Amplitude');
% d)
sysBNF = canon(G, 'companion');
[y,t,x,ysd] = step(sysBNF);

figure(5);

plot(A3BNF_y.time, A3BNF_y.signals.values,'b');
title('Step Response BNF');
xlabel('Time'); ylabel('Amplitude');