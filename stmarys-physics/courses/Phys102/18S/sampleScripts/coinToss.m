% A simple coin toss example
%
for m = 1:100
    if rand(1) < .5
        toss(m) = 0;
    else
        toss(m) = 1;
    end
end

figure(1)
plot(toss, 'o');
axis([0 m -1 2])
title('Results from coin toss')

figure(2)
histogram(toss);
title('Histogram of results from coin toss')


