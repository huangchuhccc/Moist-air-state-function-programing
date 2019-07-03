function [miu] = miu_Sutherland(t)
%用苏士南公式得到空气的动力粘度μ（pa*s）
%输入项依为干球温度t
T0=273.16;
TS=124;
T=t+273.16;
miu0=17.161*10^-6;
miu=miu0*((T/T0)^1.5)*(T0+TS)/(T+TS);
end
