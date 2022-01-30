% this is the main function for Q2

%% Q2.2
% intialize concentration
% y = [E, S, ES, P]
y0 = [1 10 0 0];

% call the function of fourth-order Runge Kutta to get the numerical solution
[x, y] = Runge(@fun_set, y0, 0.001, 0, 1);

% visualisation
plot(0:length(y)-1,y,'linewidth',1);
legend('E','S','ES','P');
xlabel('time (minutes)');  
ylabel('concentration (µM)');
xticklabels([0:0.1:1])
%% Q2.3

k1 = 100;
k2 = 600;
k3 = 150;
E0 = 1;

km = (k2 + k3)/k1;
s = 0:0.01:500;
v = [];

for i = 1:length(s)
    v(i) = k3*E0*s(i)/(km+s(i));
end

plot(s,v);
xlabel('concentration of the substrate S');  
ylabel('velocity V')    

