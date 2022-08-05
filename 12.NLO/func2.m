function [f,g] = func2(x)
f=2*x(1).^2-2*x(1)*x(2)+2*x(2).^2-6*x(1);
if nargout > 1 % gradient required
    g = [4*x(1)-2*x(2)-6;
        -2*x(1)+4*x(2)];
end
end