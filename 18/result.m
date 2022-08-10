clc;clear;
load init.mat;
load test3.mat;
minIndex=8;
maxIndex=16;
%% 求积分
syms a;
f1=poly2sym(p1);
f2=poly2sym(p2);
area1 = int(f1,x(minIndex),x(maxIndex));
area2 = int(f2,x(minIndex),x(maxIndex));
area = double(area1-area2)