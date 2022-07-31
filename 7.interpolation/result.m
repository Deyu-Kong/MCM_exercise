% 将所有结果整合到一张图上
load("init.mat");
a=0:1:13;
aa=0:0.01:13;
xx_spline=spline(a,x,aa);
xx_pchip=pchip(a,x,aa);
xx_makima=makima(a,x,aa);

yy_spline=spline(a,y,aa);
yy_pchip=pchip(a,y,aa);
yy_makima=makima(a,y,aa);

zz_spline=spline(a,z,aa);
zz_pchip=pchip(a,z,aa);
zz_makima=makima(a,z,aa);


subplot(3,1,1);
plot(a,x,'ok',aa,xx_spline,'b',aa,xx_pchip,'g', aa,xx_makima, 'r');
title("result of x");

subplot(3,1,2); 
plot(a,y,'ok',aa,yy_spline,'b',aa,yy_pchip,'g', aa,yy_makima, 'r');
title("result of y");

subplot(3,1,3);
plot(a,z,'ok',aa,zz_spline,'b',aa,zz_pchip,'g', aa,zz_makima, 'r');
title("result of z");

legend('original data','spline', 'pchip', 'makima');;
