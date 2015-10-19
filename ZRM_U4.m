%%%% ZRM_U4
clear all; close all;

%% Aufgabe 1
n = 1:10;
pr_val = 1.^n./factorial(n);
sum_value = 1;
figure('Name', 'Relativer Fehler der Potenzreihenentwicklung nach n Gliedern im Vergleich zur Built-In Funktion');
hold on;
for i = n
    sum_value = sum_value + pr_val(i);
    abs_err(i) = exp(1)-sum_value;
    rel_err(i) = abs_err(i)/sum_value;
    plot(i,rel_err(i), 'ro');
end

%% Aufgabe 2
