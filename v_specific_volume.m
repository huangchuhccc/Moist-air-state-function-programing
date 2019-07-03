function [v] = v_specific_volume(t,ts,z)
%��ʪ�����ı���� V/M
% ��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ��������m^3/kg��
p=p_barometric(z);
w=w_humidity_ratio(t,ts,z);
v=1000*0.287042*(t+273.15)*(1+1.607858*w)/p;
end

