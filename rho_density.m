function [rho] = rho_density(t,ts,z)
% ��ʪ�����ܶ�
% ��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ�ʪ�����ܶȣ�kg/m3��
v=v_specific_volume(t,ts,z);
w=w_humidity_ratio(t,ts,z);
rho=(1/v)*(1+w);
end

