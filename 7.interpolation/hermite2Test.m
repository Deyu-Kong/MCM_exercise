% 修正 Akima 分段三次 Hermite 插值
load("init.mat");
a=0:1:13;
aa=0:0.01:13;
xx=makima(a,x,aa);
yy=makima(a,y,aa);
zz=makima(a,z,aa);
draw3curve(aa,xx,yy,zz);