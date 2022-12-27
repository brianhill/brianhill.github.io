%  Example animating a particle moving on a sine curve
%  Modified from something I found online from mathworks, link below:
%  https://www.mathworks.com/help/matlab/creating_plots/trace-marker-along-line.html
%   JCK for class on 3/1/18
%   JCK updated 9/20/19
%
x = 0:.01:10;  %play with how many time steps
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
    pause(.005)          % slows down the plot, rather than drawnow, it's draw in .05s
end