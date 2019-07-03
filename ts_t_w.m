function [ts] = ts_t_w(t,w,z)
%��֪�����¶�t�뺬ʪ��w�뺣�θ߶ȣ���ʪ���¶�ts
b=p_barometric(0);
if w==0       %��wΪ0ʱ����¶�㹫ʽ������������ֵ�������Ҫ��w��һ����Сƫ�������˴���Ϊ10^-8
    w=10E-8;
end
pq=w*b/(w+0.621945);
td=td_pq(pq);
t1=td;
t2=t;
err=1;
while (err>10E-8)
    tmid=(t1+t2)/2;
    ww=w_humidity_ratio_temp(t,tmid,z);
    err=2*abs((ww-w)/(ww+w));
    ww2=w_humidity_ratio_temp(t,t2,z);
    if ((ww-w)*(ww2-w)>0)
        t2=tmid;
    else
        t1=tmid;
    end
    ts=t2;
end

