clc,clear;
% [x,y] = fmincon('func1',rand(2,1),[3,4;-1,4],[6,2],[],[],zeros(2,1),[],[]);
%优化的目标函数
fun = @func1;

% 约束条件 (cl <= nlcon(x) <= cu) 设置在cons子函数中
nlcon = @(x) [ 3*x(1)+4*x(2); 
               -x(1)+4*x(2)];
cl = [-Inf;-Inf];
cu = [6;2];  %对于约束条件的上界和下界，表达成数组的形式，如果是单方向的小于或者大于则表达成 Inf形式

% 设置约束范围
lb = [0,0];
ub = [];
%数据类型，由于原问题中x1是实数，x2为整数，因此xtype='IC'
%必要说明下，I代表interger C代表实数  B 代表{0，1}
xtype = 'IC';

%初始的猜值，OPTI的初始猜值可以不在可行域范围，但会有一定的输出infessible （不可行）的风险
%因此尽量还是设置初始值在可行域中
x0 = [1;1];                    
% 选项，设定求解器为nomad求解器
opts = optiset('solver','nomad','display','iter');

%创建一个优化对象
Opt = opti('fun',fun,'nl',nlcon,cl,cu,'bounds',lb,ub,'xtype',xtype,'options',opts);

%具体求解该问题
[x,fval,exitflag,info] = solve(Opt,x0);