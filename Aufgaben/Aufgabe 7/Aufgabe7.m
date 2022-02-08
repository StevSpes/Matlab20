function Aufgabe7()
% Definiert die Gleichung und übergib diese an getAllSolutions
% Es ist möglich, dass bei zu wenig Durchläufen nicht alle Lösungen
% gefunden werden.

clear all, clc

syms x;
eqn = x.*log(0.1.*x) == tan(x);
solution = getAllSolutions(eqn, x, [0,10], 10);
disp('Gefundene Lösungen: ');
disp(solution);