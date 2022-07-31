% 分段三次 Hermite 插值多项式 (PCHIP)
load("init.mat");
a=0:1:13;
aa=0:0.01:13;
xx=pchip(a,x,aa);
yy=pchip(a,y,aa);
zz=pchip(a,z,aa);
draw3curve(aa,xx,yy,zz);