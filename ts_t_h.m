function [ts] = ts_t_h(t,h,z)
%��֪�����¶�t(��)����h(KJ/Kg)�Լ����θ߶�m����ʪ���¶�ts(��)
w=(h-1.006*t)/(2501+1.86*t);
b=p_barometric(z);
pq=w*b/(w+0.621945);
td=td_pq(pq);
t1=td;
t2=t;
err=1;
while (err>10E-8)
    tmid=(t1+t2)/2;
    pqq=pq_water(t,tmid,z);
    err=2*abs((pq-pqq)/(pq+pqq));
    pq2=pq_water(t,t2,z);
    if ((pq2-pq)*(pqq-pq)>0)
        t2=tmid;
    else
        t1=tmid;
    end
    ts=t2;
end

