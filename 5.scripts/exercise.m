ans=[];
for i = 1:1:1000000
    a=i.^2;
    if(mod(a-i,10.^(ceil(log10(i))))==0)
        ans(end+1)=i;
    end
end
    