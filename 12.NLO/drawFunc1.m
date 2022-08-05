clc,clear;
% 绘制func的二维图像
% x1=linspace(0,10);
% x2=linspace(0,10);
% %绘制二元函数 z=x*exp(-x.^2-y.^2)
% 
% [X1,X2]=meshgrid(x1,x2);%生成平面网格
% z=2.*X1.^2-2.*X1.*X2+2.*X2.^2-6.*X1;%计算网格点的值
% mesh(X1,X2,z);%绘制二元函数

% 将x1限制为定制，绘制图像
x2=linspace(0,1,500);
y=-4-2.*x2+2.*x2.^2;
plot(x2,y);
