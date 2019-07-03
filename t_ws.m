function [t] = t_ws(ws,z)
%��֪���ͺ�ʪ��ws�뺣�θ߶�z��������¶ȣ��棩
%���ڱ�������ѹ���¶��ǵ�����ϵ�����Բ��û���ţ�ٶ��ֵ�������⣬����ΪE-8.
b=p_barometric(z);
ps=ws*b/(ws+0.621945);
% p1=ps_saturation(-99.999999999);
% p2=ps_saturation(0);
% p3=ps_saturation(0.000000000001);
% p4=ps_saturation(199.9999999999);
% if (ps<199.)
t1=-100;
t2=200;
err=1;
while (err>10E-12)
    tmid=(t1+t2)/2;
    pss=ps_saturation(tmid);
    err=2*abs((ps-pss)/(pss+ps));
    p2=ps_saturation(t2);
    p1=ps_saturation(t1);
    if ((p2-ps)*(pss-ps)>0)
        t2=tmid;
    else
        t1=tmid;
    end
    t=t2;

end

