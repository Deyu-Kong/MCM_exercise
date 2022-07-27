f=@(t)nthroot((1-t.^2).^2,3);
x=linspace(0,1);
y=f(x);
plot(x,y);