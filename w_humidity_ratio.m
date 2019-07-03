function [w] = w_humidity_ratio(t,ts,z)
%求含湿量W，即湿空气中水的质量与空气质量之比
%已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m),得到含湿量
% pq=pq_water(t,ts,z);
% B=p_barometric(z);
% w=0.621945*pq/(B-pq);
p=p_barometric(z);
pws=ps_saturation(ts);
ws=0.621945*pws/(p-pws);
ts_min=ts_t_w(t,0,z);%计算当干球温度对应的最低湿球温度
if t>0
        w=((2501-2.326*ts)*ws-1.006*(t-ts))/(2501+1.86*t-4.186*ts);
else
    w=((2830-0.24*ts)*ws-1.006*(t-ts))/(2830+1.86*t-2.1*ts);
end

if ts<ts_min     %如果当前湿球温度低于最低可能的湿球温度，则含湿量会成负值，提醒用户湿球温度过低
    w="wet-bulb temrature is below the min value";
end
end


