% My solutions to HW due 03/06
% Problems 2.18, 23, 9.1, 9.2, and 9.2
% Jessica Kintner, posting to web page 3/13
% Some plots are not the prettiest, but they all work
%
% 2.18 pp78
%
a = 0;
x =0;
i=1;
for m = 1:4
    a = a+i;
    x = x+i/a;
end
disp([a x])
% 
% vectorized
%
avec = 1:4;
xvec = 1./avec;
sum(xvec)
%
%
% Prob 2.23
%
dep = 50;
rate = .01;
bal = 0;
for m = 1:12
    bal = (bal + dep)*(1+rate);
end
disp(bal)
%
%
% Problem 9.1 p 223
%
t = 1790:2000;
p = 197273000./(1 + exp(-.03134.*(t - 1913.25)));
t2 = 1790:10:1950;
pData = [3929, 5308, 7240, 9638, 12866, 17069, 23129, 31443, 38558, 50156, 62948, 75995, 91972, 105711, 122775, 131669, 150697];
pData = 1000*pData;
%
figure(1)
plot(t, p)
hold on
%axis manual
plot(t2, pData, 'o')
hold off
%
%
% Problem 9.2 Archimedes spiral
%
a = .3;  
theta = 30*pi/180:pi/24:3000*pi/180;
r = a.*theta;
x = r.*cos(theta);
y = r.*sin(theta);
%
figure(2)
plot(x,y)


%
% Problem 9.2 from p 198
%
% I'm probably cheating here, they probably want me to set the axes
figure(3)
plot([0 1 1 2 3 3 4], [0 0 2 3 2 0 0])
