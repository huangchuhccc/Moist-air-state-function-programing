function [fai] = fai_relative_humidity(t,ts,z)
% �����ʪ�Ȧգ���ʪ������ˮ����Ħ�������Ը��¶��±���ˮ����Ħ����
%  ��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ����ʪ��
pw=pq_water(t,ts,z);
pws=ps_saturation(t);
fai=pw/pws;
end

