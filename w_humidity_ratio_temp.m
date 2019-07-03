function [w] = w_humidity_ratio_temp(t,ts,z)
%����һ��Ϊ�˷�ֹ���޵ݹ��������ĺ�ʪ�����㸱����ϵ�����ڲ��������������
p=p_barometric(z);
pws=ps_saturation(ts);
ws=0.621945*pws/(p-pws);

if t>0
        w=((2501-2.326*ts)*ws-1.006*(t-ts))/(2501+1.86*t-4.186*ts);
else
        w=((2830-0.24*ts)*ws-1.006*(t-ts))/(2830+1.86*t-2.1*ts);
end
end
