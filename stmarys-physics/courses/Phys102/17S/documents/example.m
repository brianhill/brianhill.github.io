function period = example(x0,dt,T,order)
N = round(T/dt);
t = NaN(1,N);
x = NaN(1,N);
v = NaN(1,N);

t(1) = 0;
x(1) = x0;
v(1) = 0;

par = 0;
n = 1;
while n<N
    [x(n+1),v(n+1),t(n+1)] = rkStep(x(n),v(n),t(n),dt,par,order);
    n = n+1;
end
figure(1)
plot(t/(2*pi),x)
end
