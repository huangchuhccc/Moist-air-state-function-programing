 function [t] = t_hs(hs,z)
%��֪�����ʣ�������¶ȣ��棩
%���û���ţ�ٶ��ֵ�������⣬����ΪE-8.
%�������÷�ΧΪ-70�浽80���ʪ���¶�����

i=-70;
while i<=80            %Ϊ�����ӵ����ɹ��ʣ��Կ��ܵ�ʪ���¶Ƚ��е�һ��ɸѡ��ȷ����������
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
