% Lorenz chaotic system, as in text 14.6.2
% modified slightly by me, Jessica Kintner, 5/7/18

x0 = [-2 -3.5 21];  % book's initial values

initialTime = 0;    % also chosen to match text
totalTime = 10;

[t, x] = ode45(@lorenz, [initialTime totalTime], x0);

figure(1)
clf
plot(t,x)
legend('x', 'y', 'z')
title('Lorenz System for initial values[-2 -3.5 21]')
xlabel('time in seconds')
ylabel('position (in components)')

figure(2)
clf
plot(t, x(:,2), 'b')
title('y(t) for two very similar but not identical initial conditions')
xlabel('time in seconds')
ylabel('y position')
hold on

x0(1) = -2.04
[t, x] = ode45(@lorenz, [initialTime totalTime], x0);
plot(t, x(:,2), 'r')
legend('-2', '-2.04')
hold off

function xdot = lorenz(t,x)
    xdot = zeros(3,1)
    xdot(1) = 10*(x(2) - x(1));
    xdot(2) = -x(1)*x(3) + 28*x(1) - x(2);
    xdot(3) = x(1)*x(2) -8*x(3)/3;
end
    

