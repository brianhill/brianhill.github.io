function thin_lens2(data,f)
ho = 2;
do = data(:,1);
di = data(:,2);
hi = data(:,3);

N = length(do);
nf = [0,N];
n  = 1:N;
fv  = f*[1,1];

figure(1)
subplot(2,1,1)
plot(nf,fv,'k',n,do+di,'o',n,do-di,'o',n,di-do,'o')
leg = {'$f$','$d_o+d_i$','$d_o-d_i$','$d_i-d_o$'};
legend(leg,'location','eastoutside','interpreter','latex','fontsize',14)

subplot(2,1,2)
plot(nf,1./fv,'k',n,1./do-1./di,'o',n,1./di-1./do,'o',n,1./do+1./di,'o',n,1./(do+di),'o')
leg = {'$1\over f$', '${1\over d_o}-{1\over d_i}$','${1\over d_i}-{1\over d_o}$','${1\over d_o}+{1\over d_i}$','$1\over do+di$'};
legend(leg,'location','eastoutside','interpreter','latex','fontsize',20)

figure(2)
plot(n,di./do,'o',n,-hi./ho,'o')
leg = {'$1d_i\over d_0$', '$-{h_i\over h_o}$'};
legend(leg,'location','eastoutside','interpreter','latex','fontsize',20)


end