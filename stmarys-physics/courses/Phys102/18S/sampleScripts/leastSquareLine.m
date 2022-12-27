% Program to calc least square fit of a line
% by Jessica Kintner
% created 3/19/18
%
%xyData = load('kintnerData.txt')
xyData = load('knownOffset.txt')

%xyData = load('randomY.txt')
%xyData = load('millikan.txt')
x = xyData(:, 1);
y = xyData(:, 2);
%
plot(x, y, 'o')
%
cx = 0;  cy = 0;  cxx = 0; cxy = 0;
N = length(x);

cx = sum(x)/N;
cxx = sum(x.^2)/N;
cy = sum(y)/N;
cxy = sum(x.*y)/N;

m = (cxy - cx*cy)/(cxx - cx^2)
b = (cxx*cy - cx*cxy)/(cxx - cx^2)

hold on
plot(x, m*x+b)
hold off