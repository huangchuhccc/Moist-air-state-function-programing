function [lamda] = lamda_Sutherland(t)
%����ʿ�Ϲ�ʽ�õ������ĵ���ϵ����
%����������Ϊ�����¶�t
T0=273.16;
TF=194;
T=t+273.16;
lamda0=0.02415;
lamda=lamda0*((T/T0)^1.5)*(T0+TF)/(T+TF);
end


