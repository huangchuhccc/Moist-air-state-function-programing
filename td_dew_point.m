function [td] = td_dew_point(t,ts,z)
% 求湿空气的露点
% 已知干球温度t(℃)、湿球温度ts(℃)、海拔高度Z(m)，得到湿空气露点（℃）
C14=6.54;
C15=14.526;
C16=0.7389;
C17=0.09486;
C18=0.4569;
pw=pq_water(t,ts,z)/1000;
a=log(pw);
td=C14+C15*a+C16*a^2+C17*a^3+C18*(pw^0.1984);
if td>93
    td='over the scale';
else
        if td<0
            td=6.09+12.608*a+0.4959*a^2;
        end
end

end

