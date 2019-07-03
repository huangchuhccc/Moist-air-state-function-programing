function [lamda] = lamda_Sutherland(t)
%用苏士南公式得到空气的导热系数λ
%输入项依次为干球温度t
T0=273.16;
TF=194;
T=t+273.16;
lamda0=0.02415;
lamda=lamda0*((T/T0)^1.5)*(T0+TF)/(T+TF);
end


