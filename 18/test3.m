clc;clear;
%% 
load init.mat
[max1,maxIndex]=max(x);
[min1,minIndex]=min(x);
%%
if(minIndex<maxIndex)
    x1=x(minIndex:maxIndex);
    y1=y(minIndex:maxIndex);
    x2=[x(maxIndex:-1), x(1:minIndex)];
    y2=[y(maxIndex:-1), y(1:minIndex)];
else
    x1=x(maxIndex:minIndex);
    y1=y(maxIndex:minIndex);
    x2=[x(minIndex:-1), x(1:maxIndex)];
    y2=[y(minIndex:-1), y(1:maxIndex)];
end
%%
p1=polyfit(x1,y1,4);
p2=polyfit(x2,y2,4);
%%
xx=linspace(1,9);
yy1 = polyval(p1,xx);
yy2 = polyval(p2,xx);
plot(xx,yy1); % 预测的折线图
hold on;
plot(xx,yy2);
scatter(x,y); % 真实数据的散点图
%%
save test3.mat p1 p2