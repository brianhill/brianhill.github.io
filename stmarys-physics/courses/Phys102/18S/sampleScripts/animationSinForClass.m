%  Example animating a particle moving on a sine curve
%  Modified from something I found online from mathworks
%   JCK for class on 3/1/18
%
x = 0:.01:10;  %make 10,000 data points from 0 to 10
y = sin(x);
%
plot(x,y)   % make the basic sin plot
xlabel('angle in radians')
ylabel('sin(angle)')
title('Animation of a particle on a sin curve')
%
hold on   % causes future plots to appear on same axes

p = plot(x(1),y(1),'o','MarkerFaceColor','red');  % plot the first marker as circle in red

hold off   % future plots would not appear on this set of axes

axis manual  % keep axes scaled to what they are

for k = 2:length(x)
    p.XData = x(k);     % set the XData property of p to x(k)
    p.YData = y(k);     % set the YData property of p to y(k)
    %drawnow             % update p, the plot
    pause(.05)          % slows down the plot, rather than drawnow, it's draw in .05s
end