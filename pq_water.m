function [pq] = pq_water(t,ts,z)
%�����ˮ������ѹ��
%��֪�����¶�t(��)��ʪ���¶�ts(��)���ͷ���v(m/s),���ˮ�����ķ�ѹ��pq(Pa)
p=p_barometric(z);
% pws=ps_saturation(ts);
% ws=0.621945*pws/(p-pws);
w=w_humidity_ratio(t,ts,z);
% ps=ps_saturation(t);
% wss=0.621945*ps/(p-ps);
% miu=miu_degree_saturation(t,ts,z);
% fai=fai_relative_humidity(t,ts,z);
% v=v_specific_volume(t,ts,z);
% h=h_enthalpy(t,ts,z);
pq=p*w/(0.621945+w);
end
