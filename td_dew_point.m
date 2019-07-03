function [td] = td_dew_point(t,ts,z)
% ��ʪ������¶��
% ��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ�ʪ����¶�㣨�棩
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

