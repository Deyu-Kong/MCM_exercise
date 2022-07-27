x=linspace(0,4.*pi);
y=[];
for i = x
    fx=func(i);
    y(end+1)=fx;
end
plot(x,y);