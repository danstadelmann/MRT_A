clear all;
% Matrix definieren
A = [1 2 3; 4 5 6; 7 8 9];

% Dimension einer Matrix
size(A);

% transponieren einer Matrix
A_trans = A';

% vektor definieren
v = [1 2 3];

v_trans = v';
B = A*v_trans;

% Rang einer Matrix
C = [1 2 3;3 6 9;7 9 16];
rangC = rank(C);

D = [1 -2 -3 0;2 3 8 7;-1 1 1 -1];
rangD = rank(D);

% Inverse einer Matrix
X = [3 2 1; 1 0 2; 4 1 3];
X_inverse = X^-1;

% Determinante einer Matrix
det_A = det(A);

% Eigenwerte einer Matrix
E=[-5 2;2 -2];
eig_E = eig(E);
% Eigenvektoren und Eigenwerte
% Eigenwerte in der Diagonalform
[V,D]= eig(E);
v2 = E(:,1);
