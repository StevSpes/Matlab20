function arr = getAllSolutions(eqn, x, rng, steps)
% Findet alle Lösungen für eine Gleichung mit einer Unbekannten eqnin 
% im Interval rngin. Je höher die Eingabe für steps, desto
% wahrscheinlicher ist es, alle Lösungen im Interval zu finden.
%
% Parameter:
%   eqn         Eingabegleichung
%   x           Variable
%   rng         Interval für die Lösungssuche
%   steps       Gibt an, in wie vielen Schritten die Gleichung untersucht wird

%solutions speichert alle gefundenen Lösungen
solutions = zeros(1, steps);

%stepwidth ist die Schrittweite durch das Intervall
stepwidth = (max(rng) - min(rng)) / steps

%Schreitet in 'steps' Schritten durch das Intervall und speichert nächste
%Lösung zu diesem Punkt ab.
for k = 1:steps
    cs = vpasolve(eqn,x,[stepwidth * k - stepwidth ,stepwidth * k]);
    disp(cs)
    %Problem: Wenn vpasolve keine Lösung liefert, wird cs ein leeres Feld, dessen Wert nicht in die Lösungsmatrix "Solutions" eingesetzt werden kann. 
    %Lösung schafft die Funktion "isempty", welche ein leeres Feld durch 0 ersetzt und null ist zumindest in diesem Beispiel eine Nullstelle...
        if isempty(cs) 
            cs = 0;
        end
    solutions(k) = cs;
    
    %ersetzte Zeilen:
    %if cs ~= 0 
     %   
    %end
    
end

% Am Ende werden alle Duplikate im Lösungsvektor entfernt
arr = unique(solutions);
