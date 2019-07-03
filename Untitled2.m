t=60;
fai=0.1;
while fai<1.1
    ts=ts_t_fai(t,fai,0);
    v=h_enthalpy(t,ts,0);
    disp(v);
    fai=fai+0.1;
end