clc;
close all;
x = randn(1,10);
y = randn(1,10);
% displaying those points in console
disp('x -> ');
disp(x);
disp('y -> ');
disp(y);
% plotting random points with red * mark
plot(x,y,'r*');
% labelling all points
for k = 1:10
text(x(1,k),y(1,k),sprintf(' %d',k))
end;
% connecting all points to point 1
for k = 2:10
% 1--k
line([x(1,1),x(1,k)],[y(1,1),y(1,k)])
end 