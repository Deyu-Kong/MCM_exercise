clc;clear;
load init.mat;
p=polyfit(x,y,2);
%% 绘图
x1=linspace(0,10);
y1 = polyval(p,x1);
plot(x1,y1); % 预测的折线图
hold on;
scatter(x,y); % 真实数据的散点图