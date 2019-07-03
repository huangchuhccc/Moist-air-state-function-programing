function [ps] = ps_saturation(t)
%由输入摄氏温度等得到饱和蒸气压，输入范围为-100℃到200℃。
%输入温度℃，输出为饱和蒸气压ps (pa)
C1=-5.6745359E+03;
C2=6.3925247E+00;
C3=-9.6778430E-03;
C4=6.2215701E-07;
C5=2.0747825E-09;
C6=-9.4840240E-13;
C7=4.1635019E+00;

C8=-5.8002206E+03;
C9=1.3914993E+00;
C10=-4.8640239E-02;
C11=4.1764768E-05;
C12=-1.4452093E-08;
C13=6.5459673E+00;

T=t+273.15;

if (t<=0&&t>=-100)
    pws=C1/T+C2+C3*T+C4*T^2+C5*T^3+C6*T^4+C7*log(T);
    ps=exp(pws);
else
    if(t>0&&t<=200)
        pws=C8/T+C9+C10*T+C11*T^2+C12*T^3+C13*log(T);
         ps=exp(pws);
    else
        fprintf('temperature is over range');
    end
end
end

