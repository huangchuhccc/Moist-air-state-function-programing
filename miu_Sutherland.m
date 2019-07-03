function [miu] = miu_Sutherland(t)
%����ʿ�Ϲ�ʽ�õ������Ķ���ճ�Ạ̇�pa*s��
%��������Ϊ�����¶�t
T0=273.16;
TS=124;
T=t+273.16;
miu0=17.161*10^-6;
miu=miu0*((T/T0)^1.5)*(T0+TS)/(T+TS);
end
