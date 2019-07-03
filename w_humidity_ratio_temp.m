function [w] = w_humidity_ratio_temp(t,ts,z)
%这是一个为了防止无限递归所创立的含湿量计算副本，系程序内部函数，请勿调用
p=p_barometric(z);
pws=ps_saturation(ts);
ws=0.621945*pws/(p-pws);

if t>0
        w=((2501-2.326*ts)*ws-1.006*(t-ts))/(2501+1.86*t-4.186*ts);
else
        w=((2830-0.24*ts)*ws-1.006*(t-ts))/(2830+1.86*t-2.1*ts);
end
end
