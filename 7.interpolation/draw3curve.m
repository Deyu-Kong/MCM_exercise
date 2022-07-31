function [] = draw3curve(a,x,y,z)
%DRAW3CURVE 此处显示有关此函数的摘要
%   此处显示详细说明
subplot(3,1,1);
plot(a,x);
title("figure of x");

subplot(3,1,2); 
plot(a,y);
title("figure of y");

subplot(3,1,3);
plot(a,z);
title("figure of z");
end

