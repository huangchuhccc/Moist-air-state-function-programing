function [rho] = rho_density(t,ts,z)
% 求湿空气密度
% 已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到湿空气密度（kg/m3）
v=v_specific_volume(t,ts,z);
w=w_humidity_ratio(t,ts,z);
rho=(1/v)*(1+w);
end

