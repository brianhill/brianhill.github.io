% Exam 1 Review
% Jessica Kintner, 3/13
% edited 3/14 to add axis labels, since I commented on yours :)
%
% Problem 1
%
2*3
2*3/6*4
1/2
1\2
pi
exp(1)
sqrt(25)
sqrt(-25)
cos(30*pi/180)
cosd(30)
cos(pi/2)
%
% Problem 2
%
exp(-i*pi)
%
(2-3)*(5+3)/(2-6)
%
mu = pi*4e-7
r = .1
B = mu/2/pi/r
%
A = [1 2 3; 4 5 6]
A * [7; 8; 9]
%
inv([8 1 6; 3 5 7; 4 9 2])
%
% Problem 3 -- tether ball
%
t = 0:.1:10;
theta = 30*pi/180;
g = 9.81;
ell = 1.5;
R = ell*sin(theta);
%
phi = t.*sqrt(g/R*tan(theta));
x = R .* cos(phi);
y = R .* sin(phi);
%
figure(1)
plot(t, phi)
title('Horizontal angle as a function of time')
xlabel('time (s)') 
ylabel('phi (rad)')

figure(2)
plot(x, y)
title('Trajectory of a tether ball')
xlabel('x (m)') 
ylabel('y (m)')

%
% Problem 4 -- save and load
%
saveMatrix = [t' phi'];
save tether.txt saveMatrix -ascii
%
clear
newMatrix = load('tether.txt');
newT = newMatrix(:,1);
newPhi = newMatrix(:, 2);
%
figure(3)
plot(newT, newPhi)
title('Check of Horizontal angle as a function of time')
xlabel('time (s)') 
ylabel('phi (rad)')

%
% Problem 5
%
[x, y] = xyComp(15, 30)
[x, y] = xyComp(10, 135)
%
function [xComp, yComp] = xyComp(mag, dir)
    xComp = mag*cos(dir*pi/180);
    yComp = mag*sin(dir*pi/180);
end
