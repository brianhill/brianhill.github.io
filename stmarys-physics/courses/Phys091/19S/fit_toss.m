function [y0,v0,a] = fit_toss(data,dt)
    x = data(:,1);
    y = data(:,2);
    N = length(y);
    t = (0:N-1)'*dt;
    tf = (0:40)*max(t)/40;
figure(1)      
    subplot(2,2,1)
    p = polyfit(t,y,2);
    a = 2*p(1);
    v0 = p(2);
    y0 = p(3);
    y_fit = polyval(p,tf);
    plot(t,y,'o',tf,y_fit)
    if a<0
        txt = sprintf('$y = %0.2f + %0.2f t - {1\\over 2}%0.2f t^2$',y0,v0,abs(a));
    else
        txt = sprintf('$y = %0.2f + %0.2f t + {1\\over 2}%0.2f t^2$',y0,v0,abs(a));
    end
    title(txt,'interpreter','latex');
    xlabel('time')
    ylabel('vertical position')
    
    subplot(2,2,4)
    p = polyfit(t,x,1);
    vx = p(1);
    x0 = p(2);
    x_fit = polyval(p,tf);
    plot(t,x,'o',tf,x_fit)
    if vx<0
        txt = sprintf('$x = %0.2f - %0.2f t$',x0,abs(vx));
    else
        txt = sprintf('$x = %0.2f + %0.2f t$',x0,abs(vx));
    end
    title(txt,'interpreter','latex');
    xlabel('time')
    ylabel('horizontal position')
    
    subplot(2,2,2)
    plot(x,y,'o',x_fit,y_fit)
    title('trajectory');
    xlabel('vertical position')
    ylabel('horizontal position')
end