function [ts] = ts_t_w(t,w,z)
%已知干球温度t与含湿量w与海拔高度，求湿球温度ts
b=p_barometric(0);
if w==0       %当w为0时，求露点公式会计算出无穷大的值，因此需要把w加一个极小偏移量，此处设为10^-8
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

