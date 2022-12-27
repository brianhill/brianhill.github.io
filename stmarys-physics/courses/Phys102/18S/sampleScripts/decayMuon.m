% Radioactive decay--muons!
% by Jessica Kintner, 4/5
%
% There are many ways to do this.  I thought the might be clearest,
% but it is definitely not the fastest :)
%
clear N; clear T;
N0 = 100000;

index = 1;
Gamma = 1/2.2e-6;  % in 1/seconds
dt = 1e-7;  % in seconds
numberLeft = N0;
timeOfStep = 0;
totalTime = 1e-5;   % in seconds

%
for t = 0:dt:totalTime
    clear particles;
    particles = rand(1,numberLeft);
    numDecayed = 0;
    for k = 1:numberLeft
        if particles(k) < Gamma*dt   % then it decays
            %particles(k) = 2;
            numDecayed = numDecayed+1;
        end
    end
    
    numberLeft = numberLeft - numDecayed;
    timeOfStep = timeOfStep + dt;
    T(index) = timeOfStep;
    N(index) = numberLeft;
    index = index + 1;
end

figure(1)
plot(T, N, 'o')
%xlim([0 totalTime])

predN = N0*exp(-Gamma*T);
hold on
plot(T, predN)
hold off

myData = [T' N'];
save decayMuonData.txt myData -ascii

        