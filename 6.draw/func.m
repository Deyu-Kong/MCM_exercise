function fx = func(x)
%F ������������
syms t; % ����tΪ����
% f=(1-t.^2).^(2/3);
f=nthroot((1-t.^2).^2,3);
fx=int(f,t,0,sin(x));
end

