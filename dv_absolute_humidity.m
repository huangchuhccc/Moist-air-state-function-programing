function [dv] = dv_absolute_humidity(t,ts,z)
%��֪�����¶ȡ�ʪ���¶ȣ������ʪ��
%��֪�����¶�t(��)��ʪ���¶�ts(��)�����θ߶�Z(m)���õ�����ʪ��dv��kg/m3��
v=v_specific_volume(t,ts,z);
w=w_humidity_ratio(t,ts,z);
dv=w/v;
end

