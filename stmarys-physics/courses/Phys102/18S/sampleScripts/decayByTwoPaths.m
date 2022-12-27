% multiple decays
% by Jessica Kintner, 4/16/18

tau_Bi213 = 46*60; % in seconds
tau_Ti = 2.2*60;    % in s
tau_Pb = 3.3*60;    % in s

gamma_Bi213 = 1/tau_Bi213;
gamma_Ti = 1/tau_Ti;
gamma_Pb = 1/tau_Pb;

N_Bi213(1) = 10000;
N_Ti(1) = 0;
N_Pb(1) = 0;
N_Bi209(1) = 0;

totalTime = 20000;
dt = 1;     % in seconds

for t = 2:totalTime
    % Keep the same number if nothing happens:
    N_Bi213(t) = N_Bi213(t-1);
    N_Pb(t) = N_Pb(t-1);
    N_Ti(t) = N_Ti(t-1);
    N_Bi209(t) = N_Bi209(t-1);
   
    % Start with the loop over the Pb atoms
    % this prevents allowing a decay of Bi into lead to turn into Ti
    if N_Pb(t) > 0
        clear randPb;
        randPb = rand(1,N_Pb(t));
        for k = 1:N_Pb(t)
            if randPb(k) < gamma_Pb*dt
                N_Pb(t) = N_Pb(t) - 1;
                N_Bi209(t) = N_Bi209(t)+1;
            end
        end
    end
    
    if N_Ti(t) > 0
        clear randTi;
        randTi = rand(1,N_Ti(t));
        for k = 1:N_Ti(t)
            if randTi(k) < gamma_Ti*dt
                N_Ti(t) = N_Ti(t) - 1;
                N_Pb(t) = N_Pb(t) + 1;      % add to number from same time step
            end
        end
    end
    
    if N_Bi213(t) > 0
        clear randBi;
        randBi = rand(1,N_Bi213(t));
        for k = 1:N_Bi213(t)
            if randBi(k) < gamma_Bi213*dt
                N_Bi213(t) = N_Bi213(t) - 1;
                
                fooRand = rand(1);
                if fooRand < .9791
                    N_Pb(t) = N_Pb(t) + 1;
                else
                    N_Ti(t) = N_Ti(t) + 1;
                end
            end
        end
    end
    
end

allTimes = 1:totalTime;

figure(1)
plot(allTimes, N_Bi213, '-*','MarkerIndices',1:1000:length(N_Bi213), 'DisplayName','Bi 213')
hold on
plot(allTimes, N_Ti, 'DisplayName','Ti')
plot(allTimes, N_Pb, 'DisplayName','Pb')
plot(allTimes, N_Bi209, '-o','MarkerIndices',1:1000:length(N_Bi213),  'DisplayName', 'Bi 209')
legend
hold off

figure(2)
semilogy(allTimes, N_Bi213, '-*','MarkerIndices',1:1000:length(N_Bi213), 'DisplayName','Bi 213')
hold on
semilogy(allTimes, N_Ti, 'DisplayName','Ti')
semilogy(allTimes, N_Pb, 'DisplayName','Pb')
semilogy(allTimes, N_Bi209, '-o','MarkerIndices',1:1000:length(N_Bi213),  'DisplayName', 'Bi 209')
legend
hold off

            