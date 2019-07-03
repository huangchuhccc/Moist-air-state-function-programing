function [fai] = fai_relative_humidity(t,ts,z)
% 求相对湿度φ，即湿空气中水蒸气摩尔数除以该温度下饱和水蒸气摩尔数
%  已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到相对湿度
pw=pq_water(t,ts,z);
pws=ps_saturation(t);
fai=pw/pws;
end

