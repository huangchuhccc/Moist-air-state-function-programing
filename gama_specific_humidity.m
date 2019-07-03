function [gama] = gama_specific_humidity(t,ts,z)
%求准确含湿比，即湿空气中水蒸气质量除以水蒸气加干空气总质量
%已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到准确含湿比
w=w_humidity_ratio(t,ts,z);
gama=w/(1+w);
end

