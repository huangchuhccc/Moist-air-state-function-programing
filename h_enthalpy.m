function [h] = h_enthalpy(t,ts,z)
% ��ʪ��������h
% ��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ�ʪ�����ʣ�KJ/Kg�ɿ�����
w=w_humidity_ratio(t,ts,z);
h=1.006*t+w*(2501+1.86*t);
end

