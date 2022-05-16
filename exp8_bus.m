clc;
close all;
x = randn(1,10);
disp(x);
m = -1:0.01:1;
yline(0,'g');
hold on;
x = randn(1,10);
y = randn(1,10);
plot(x,y,'r*');
for k = 1:10
text(x(1,k),y(1,k),sprintf(' %d',k))
end
for k = 1:10
line([x(1,k),x(1,k)],[0,y(1,k)])
end
title('BUS TOPOL0GY')