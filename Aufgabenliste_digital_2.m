%%Aufgabe 5
%define Parameters
A1=10;
A2=1;
w1=2*pi/10;
w2=2*pi/0.1;

sim('Aufgabenliste_digital_2_simulink');

figure(1);
plot(ys.time,ys.signals.values,...
yk.time,yk.signals.values,'r');

%G=tf([1],[1/4,1]);
%bode(G)


