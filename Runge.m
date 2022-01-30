function [t, y] = Runge(func, y0, h, t0, tn)

% func: the function of ODE
% y0: the initial value
% h: stepwise
% [t0, tn]: interval

t = t0:h:tn;
n = length(t);
y = [];
y(:,1) = y0(:);


for i = 1:n-1
    if  y(2,i) > 0 
       K1 = feval(func, t(i), y(:,i));
       K2 = feval(func, t(i) + h/2, y(:,i) + h/2*K1);
       K3 = feval(func, t(i) + h/2, y(:,i) + h/2*K2);
       K4 = feval(func, t(i) + h, y(:,i) + h*K3);
       y(:,i+1) = y(:,i) + (h/6)*(K1 + 2*K2 + 2*K3 + K4);
    end
end


end

