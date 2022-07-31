% 将三个初始向量用三个图像并排的方式绘制在一张图片中
load("init.mat");
a=0:1:13;
subplot(3,1,1);
plot(a,x);
title("figure of x");

subplot(3,1,2); 
plot(a,y);
title("figure of y");

subplot(3,1,3);
plot(a,z);
title("figure of z");