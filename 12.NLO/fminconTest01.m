clc,clear;
[x,y] = fmincon('func1',rand(2,1),[3,4;-1,4],[6,2],[],[],zeros(2,1),[]);

% options = optimoptions('fmincon','SpecifyObjectiveGradient',true); % 将梯度计算加入目标函数中，以实现更快或更可靠的计算。
% [x,y] = fmincon('func2',rand(2,1),[3,4;-1,4],[6,2],[],[],zeros(2,1),[],[],options);