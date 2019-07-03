function [miu] = miu_degree_saturation(t,ts,z)
% �õ����Ͷȣ�����ʪ��W���Ա��ͺ�ʪ��Ws
% ��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ����Ͷ�
w=w_humidity_ratio(t,ts,z);
ps=ps_saturation(t);
B=p_barometric(z);
ws=0.621945*ps/(B-ps);
miu=w/ws;
end

