% a random distribution and a normal distribution
% by Jessica Kintner
% 
randomDist = floor(100*rand(1, 1000));

figure(1)
plot(randomDist, 'o')

figure(2)
histogram(randomDist, 100);
title('Random numbers');

gaussianDist = floor(100*randn(1, 1000));

figure(3) 
plot(gaussianDist, 'o');
title('Random numbers in a Gaussian Distribution');

figure(4)
histogram(gaussianDist, 50);
title('Random numbers in a Gaussian Distribution');
