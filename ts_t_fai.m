function [ts] = ts_t_fai(t,fai,z)
%由干球温度与相对含湿量 求湿球温度。
p=p_barometric(z);
ps=ps_saturation(t);
ws=0.621945*ps/(p-ps);
miu=fai/(1+(1-fai)*ws/0.62945);
w=ws*miu;
t1=t;
t2=ts_t_w(t,0.00000,z);
err=1;
while (err>10E-8)
    tmid=(t1+t2)/2;
    w_mid=w_humidity_ratio(t,tmid,z);
    err=2*abs((w_mid-w)/(w_mid+w));
    w2=w_humidity_ratio(t,t2,z);
    if ((w2-w)*(w_mid-w)>0)
        t2=tmid;
    else
        t1=tmid;
    end
    ts=t2;
end

