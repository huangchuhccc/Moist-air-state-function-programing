function [ts] = t_saturation(t)
%��֪��������ѹ���͸����¶ȣ�����ʪ���¶�
%   �˴���ʾ��ϸ˵��
ps=ps_saturation(t);
ts=0;
err=p_water(t,ts,0)-ps;
whlie (err>E-5)
    if err>0
        
ts=double(tss);
end

