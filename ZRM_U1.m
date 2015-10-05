%% Rechnen im Zustandsraum Uebung 1
clear all;
%% define Matrix
A = [-5 2; 2 -2];
%% Aufgabe 1

%% poly(A)
% if A is nxn matrix: returns n+1 element row vector whose elements
% are the coefficients of the characteristic polynomial -> det(lambda-A)
polyA = poly(A);
polyA1 = poly(A(1,:));

%% roots(A)
% nullstellen des charakteristischen Polynoms
rootsA = roots(polyA);
% = eigenvalues von A
%% eig(A)
eigA = eig(A);

%% rank(A)
% number of linearly independent rows and columns
rankA = rank(A);

%% Aufgabe 2
B = [-2 2 -3;2 1 -6;-1 -2 0];
eigB = eig(B);
eigB2 = roots(poly(B));

%% Aufgabe 3
C = [5 4; 1 2];
[V,D]= eig(C);
% D: diagonalmatrix 
% V: matrix with (right) eigenvectors as columns = Transformationsmatrix

%% Aufgabe 4
% zeros: -1 2 -3
p = poly([-1 2 -3]);
% p = (s+1)(s-2)(s+3)
%   = s³+ ...s² + ...s¹
p2 = conv(conv([1 1],[1 -2]),[1 3]);
% Kontrolle
zerosP = roots(p2);
%komplex
%alternativ i definieren
% i = sqrt(-1);
p3 = poly([-1+1j -1-1j -2]);
% Test
roots(p3);

% Alternative Berechnung mit convolution
p4 = conv(conv([1 1-1j],[1 1+1j]),[1 2]);

%% Aufgabe 5
% a)
D = [-1 -2 3; -3 -2 -3; -1 2 -2];
eigD = eig(D);
realD = real(eigD);
plot(real(eigD),imag(eigD),'xk');
hold on;
xlabel('Realteil');
ylabel('Imaginaerteil');
title('komplexe s-Ebene');
% b)
% rand gibt mir ein Zufallszahl zwischen 0 und 1...anschliessend skalieren,
% damit dieser Wert um 30% um -2 variert, respektive 60% für einen Wert
% zwischen 0 und 1
% Bsp. zeigt, dass ein Eigenwert konstant ist, Frage ob alle Eigenwerte
% durch den Regler beeinflussbar sind?
colors = ['xb' 'xy' 'xc' 'xm' 'xr' 'xg'];
for m = 1:6
    D_m = [-1 -2 3; -3 -2 -3; -1 2 ((-2-0.15*2)+0.6*rand)];
    % eig(D_m) debug purpose
    plot(real(eig(D_m)),imag(eig(D_m)),colors(m));
    hold on;
end
% c)



