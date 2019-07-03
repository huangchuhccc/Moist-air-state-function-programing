function [miu] = miu_degree_saturation(t,ts,z)
% 得到饱和度，即含湿比W除以饱和含湿比Ws
% 已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到饱和度
w=w_humidity_ratio(t,ts,z);
ps=ps_saturation(t);
B=p_barometric(z);
ws=0.621945*ps/(B-ps);
miu=w/ws;
end

