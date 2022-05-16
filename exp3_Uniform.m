clc
close all;
N = 100000;
x = rand(1,N);
mu = mean(x);
sigma2 = var(x);
sigma = sqrt(sigma2);
a = mu - sqrt(3).*sigma;
b = mu + sqrt(3).*sigma;
x = a:0.01:b;
y = (1./(b-a)).*ones(1, length(x));
subplot(2,1,1);
plot(x,y);
axis([-1 2 0 3]);
title('PDF of uniform distribution')
z = (x-a)/(b-a);
subplot(2,1,2);
plot(x,z);
title('CDF of uniform distribution')