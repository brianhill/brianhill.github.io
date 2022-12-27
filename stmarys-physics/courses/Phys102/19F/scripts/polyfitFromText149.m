% Interactive script to fit a cubic to data points
% copied from text, sec 14.9
% a few comments and edits by JCK, 10/18/19

% set up figure window
clf
hold on
axis([0 100 0 100]);

%set up loop that allows user to enter data points on figure
diff = 10;
xold = 68;
i = 0;
xp = zeros(1);
yp = zeros(1);
% data points
while diff > 2
    [a b] = ginput(1);
    diff = abs(a - xold);
    if diff > 2
         i = i + 1;
         xp(i) = a;
         yp(i) = b;
         xold = a;
         plot(a, b, 'ok')
    end
end

% here's the fitting part
p = polyfit(xp, yp, 3 )
x = 0:0.1:xp(length(xp));
y= p(1)*x.^3 + p(2)*x.^2 + p(3)*x + p(4); plot(x,y), title( 'cubic polynomial fit'), ylabel('y(x)'), xlabel('x')
hold off