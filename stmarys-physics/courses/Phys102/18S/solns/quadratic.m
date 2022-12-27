% quadratic.m
% by Jessica Kintner
% Problem 3.5 from text due 3/13
%
% set up some defaults:
a = 1;
b = 1;
c = 1;
%
% three test cases:
[root1, root2] = myQuadratic(1, 1, 1);
disp([root1, root2])

[root1, root2] = myQuadratic(2, 4, 2);
disp([root1, root2])

[root1, root2] = myQuadratic(2, 2, -12);
disp([root1, root2])

%
function [x1, x2] = myQuadratic(a, b, c)
    x1 = (-b - sqrt(b^2 - 4*a*c))/2/a;
    x2 = (-b + sqrt(b^2 - 4*a*c))/2/a;
end


