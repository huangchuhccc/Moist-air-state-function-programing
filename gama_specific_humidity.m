function [gama] = gama_specific_humidity(t,ts,z)
%��׼ȷ��ʪ�ȣ���ʪ������ˮ������������ˮ�����Ӹɿ���������
%��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ�׼ȷ��ʪ��
w=w_humidity_ratio(t,ts,z);
gama=w/(1+w);
end

