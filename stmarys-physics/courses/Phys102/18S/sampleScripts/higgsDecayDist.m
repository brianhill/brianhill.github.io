% Higgs Decay Distribution for a 125 GeV Higgs
% by Jessica Kintner
%
ranDist = rand(1, 1000000);
probs = [0 .60 .81 .9 .95 .975 .995 .997 .9985 1];
particles = discretize(ranDist, probs, 'categorical',{'bbbar', 'WW', 'gg', 'tau tau', 'cc', 'ZZ', 'gamma gamma', 'gamma Z', 'other'});
summary(particles)

figure(1)
histogram(particles)