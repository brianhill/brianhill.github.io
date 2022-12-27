% incline.m
% by Jessica Kintner, 3/7
% for HW due 3/13 
%
g=9.81;
s0 = 0;
theta0 = 30;
v0 = 0;
mu = 0.2;
mass = 1;

a = g*sin(theta0*pi/180);
af = a -mu*mass*g*cos(theta0*pi/180);
%
t = 0:.1:12;

s = s0 + v0*t + a/2*t.^2;
sf = s0 + v0*t + af/2*t.^2;

x = s*cos(theta0*pi/180);
y = -s*sin(theta0*pi/180);

xf = sf*cos(theta0*pi/180);
yf = -sf*sin(theta0*pi/180);


figure(1)
subplot(2, 1, 1)
plot(t, x, t, xf);
title('horizontal position over time');

subplot(2, 1, 2)
plot(t, y, t, yf);
title('vertical position over time');

figure(2)
plot(x,y)
title('Actual trajectory');
hold on
p=plot(x(1), y(1), 'o', 'MarkerFaceColor','red')
for k = 2:length(t)
    p.XData = x(k);
    p.YData = y(k);
    drawnow;
end
hold off

figure(3)
plot(t,s, t, sf)
title('Distance along the incline over time');

