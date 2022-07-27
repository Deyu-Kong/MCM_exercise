x=linspace(-5,5);
y=x;
[X,Y]=meshgrid(x,y);%生成网格，构造X,Y矩阵
z=mypow(X,Y);
mesh(X,Y,z);