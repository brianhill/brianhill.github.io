% a first 2nd order Runge-Kutta example
% solve ODE f = xdot = 2t; given it starts at (0,0)
%
% following notation in Newman, Ch 8
% written 11/24/19

clear t; clear xRK;

xRK(1) = 0;  t(1) = 0;

h = 0.1;
totalT = 2;
numTimeSteps = totalT/h ;

for m = 1:numTimeSteps
    k1 = h * 2*t(m);
    k2 = h * 2*( t(m) + h/2 );
    xRK(m+1) = xRK(m) + k2;
    t(m+1) = t(m) + h;
end

xExact = t.^2;

plot(t,xRK,'o',t,xExact)