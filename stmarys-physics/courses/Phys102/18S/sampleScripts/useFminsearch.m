% 
% Use the built in function fminsearch to check our answer
% by Jessica Kintner
% created 3/19/18
%

p_init = [1, 0];

p_min = fminsearch(@sumErrorsSq, p_init)

function chiSq = sumErrorsSq(p)
    m = p(1);  b = p(2);
    
    xyData = load('randomY12x-4.txt');
    %xyData = load('knownOffset.txt');
    x = xyData(:, 1);
    y = xyData(:, 2);

    yfit = m*x + b;
    chiSq = sum((yfit-y).^2);
end