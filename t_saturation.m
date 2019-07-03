function [ts] = t_saturation(t)
%已知饱和蒸汽压，和干球温度，逆推湿球温度
%   此处显示详细说明
ps=ps_saturation(t);
ts=0;
err=p_water(t,ts,0)-ps;
whlie (err>E-5)
    if err>0
        
ts=double(tss);
end

