clear;
close all;
clc;
x = 0 : 0.1 : 100;
lambda = 0.5;
pdfu = lambda * exp(-lambda * x);
subplot(2,1,1);
plot(x, pdfu);
xlim([0 30]);
title('PDF of exponential distribution');
cdfu = 1 - exp(-lambda * x);
subplot(2,1,2);
plot(x, cdfu);
xlim([0 30]);
title('CDF of exponential distribution');