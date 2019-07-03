function [v] = v_specific_volume(t,ts,z)
%求湿空气的比体积 V/M
% 已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到比体积（m^3/kg）
p=p_barometric(z);
w=w_humidity_ratio(t,ts,z);
v=1000*0.287042*(t+273.15)*(1+1.607858*w)/p;
end

