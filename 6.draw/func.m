function fx = func(x)
%F 题中所给函数
syms t; % 声明t为变量
% f=(1-t.^2).^(2/3);
f=nthroot((1-t.^2).^2,3);
fx=int(f,t,0,sin(x));
end

