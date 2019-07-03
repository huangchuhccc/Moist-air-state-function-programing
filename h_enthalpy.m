function [h] = h_enthalpy(t,ts,z)
% 求湿空气的焓h
% 已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到湿空气焓（KJ/Kg干空气）
w=w_humidity_ratio(t,ts,z);
h=1.006*t+w*(2501+1.86*t);
end

