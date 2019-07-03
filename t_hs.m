 function [t] = t_hs(hs,z)
%已知饱和焓，求干球温度（℃）
%采用基于牛顿二分迭代法求解，精度为E-8.
%函数适用范围为-70℃到80℃的湿球温度区间

i=-70;
while i<=80            %为了增加迭代成功率，对可能的湿球温度进行第一部筛选，确定迭代区间
    if (hs>h_enthalpy(i,i,z))
        if (hs<h_enthalpy(i+10,i+10,z))
        t1=i;
        t2=i+10;
        break;
        end
    end
    i=i+10;
end

err=1;
while (err>10E-8)
    tmid=(t1+t2)/2;
    hss=h_enthalpy(tmid,tmid,0);
    err=2*abs((hs-hss)/(hs+hss));
    h2=h_enthalpy(t2,t2,0);
    if ((h2-hs)*(hss-hs)>0)
        t2=tmid;
    else
        t1=tmid;
    end
    t=t2;

end
