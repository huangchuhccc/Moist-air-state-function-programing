function [w] = w_humidity_ratio(t,ts,z)
%��ʪ��W����ʪ������ˮ���������������֮��
%��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m),�õ���ʪ��
% pq=pq_water(t,ts,z);
% B=p_barometric(z);
% w=0.621945*pq/(B-pq);
p=p_barometric(z);
pws=ps_saturation(ts);
ws=0.621945*pws/(p-pws);
ts_min=ts_t_w(t,0,z);%���㵱�����¶ȶ�Ӧ�����ʪ���¶�
if t>0
        w=((2501-2.326*ts)*ws-1.006*(t-ts))/(2501+1.86*t-4.186*ts);
else
    w=((2830-0.24*ts)*ws-1.006*(t-ts))/(2830+1.86*t-2.1*ts);
end

if ts<ts_min     %�����ǰʪ���¶ȵ�����Ϳ��ܵ�ʪ���¶ȣ���ʪ����ɸ�ֵ�������û�ʪ���¶ȹ���
    w="wet-bulb temrature is below the min value";
end
end


