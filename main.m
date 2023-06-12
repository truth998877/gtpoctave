#!/usr/bin/env octave -qf

arg_list=argv();
alt=str2double(arg_list{1});
xm=str2double(arg_list{2});
dtamb=str2double(arg_list{3});

R=8.314;
M=0.0289644;

TAMB=TISA_FROM_ALT(alt) + dtamb;
PAMB=PAMB_FROM_ALT(alt);
[GAMMA, CP, H, VSOUND, RHO]=FLUID_PROP('dry air', PAMB, TAMB, R, M);

[PTOTAL, TTOTAL]=PTTOTAL_FROM_MACH(xm, PAMB, TAMB, GAMMA);
%TTOTAL=TTOTAL_FROM_MACH(xm, TAMB, GAMMA);

out=['TAMB = ' num2str(TAMB) '°C, PAMB = ' num2str(PAMB) 'Pa, PTOTAL = ' num2str(PTOTAL) 'Pa, TTOTAL = ' num2str(TTOTAL) '°C, RHO = ' num2str(RHO) 'kg/m³, VSOUND = ' num2str(VSOUND) 'm/s, GAMMA = ' num2str(GAMMA) ', CP = ' num2str(CP) ', H = ' num2str(H)];

disp(out)

