% useFminOnQuadratic
% Another example of a using fminsearch to find the set of parameters
%   that will minimize the difference between the data and the curve
% by Jessica Kintner
% created 4/5/18
%
p_init = [0, 0, 0];     % initial guess of parameters

% Now call fminsearch on a function--in this case, one I wrote, myFunc.
% We need to pass both name of the function to minimize (myFunc) and
%   a set of parameters that form the initial guess (p_init).
%
p_min = fminsearch(@myFunc, p_init)     % p_min is result of fminsearch

function chiSq = myFunc(p)
    a = p(1);  b = p(2);  c = p(3);     % usually use a,b,c for quadratic
    
    xyData = load('verticalMotion.txt');

    x = xyData(:, 1);
    y = xyData(:, 2);

    yfit = a*x.^2 + b*x + c;    % here I use the a, b, c as expected

    chiSq = sum((yfit-y).^2);   % this is the Chi^2 we learned about
        % it is the diff between fit (curve) and the data squared
        % then added.  This is the thing we want to minimize
        % chiSq is the return value of this function
end