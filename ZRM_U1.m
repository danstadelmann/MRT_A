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
zeros = [-1 2 -3];
%conv(zeros);

%% Aufgabe 5
% a)
D = [-1 -2 3; -3 -2 -3; -1 2 -2];
eigD = eig(D);
real(eigD);
plot(real(eigD),imag(eigD),'or')
xlabel('Realteil');
ylabel('Imaginaerteil');
title('komplexe s-Ebene');
% b)
