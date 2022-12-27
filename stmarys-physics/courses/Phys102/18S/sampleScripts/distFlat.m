% a random distribution 
% by Jessica Kintner, 4/3/2018
% 
vectorLength = 1000000;
randomDist = floor(100*rand(1, vectorLength));

figure(1)
plot(randomDist, 'o')
title([num2str(vectorLength) ' Random numbers']);

figure(2)
histogram(randomDist, 50);
title('Random numbers');
