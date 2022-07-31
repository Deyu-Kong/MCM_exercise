% 使用样条函数进行插值
load("init.mat");
a=0:1:13;
aa=0:0.01:13;
xx=spline(a,x,aa);
yy=spline(a,y,aa);
zz=spline(a,z,aa);
draw3curve(aa,xx,yy,zz);