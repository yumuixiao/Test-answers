function f = fun_set(t, y)
% this is the ODE
%y = [E, S, ES, P]
%k = [k1, k2, k3]

k = [100 600 150];

f(1) = -k(1)*y(1)*y(2) + k(2)*y(3) + k(3)*y(3);   %dE
f(2) = -k(1)*y(1)*y(2) + k(2)*y(3);               %dS
f(3) = k(1)*y(1)*y(2) - k(2)*y(3) - k(3)*y(3);    %dES
f(4) = k(3)*y(3);                                 %dP

f = f(:);
