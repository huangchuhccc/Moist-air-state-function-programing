function [dv] = dv_absolute_humidity(t,ts,z)
%已知干球温度、湿球温度，求绝对湿度
%已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到绝对湿度dv（kg/m3）
v=v_specific_volume(t,ts,z);
w=w_humidity_ratio(t,ts,z);
dv=w/v;
end

