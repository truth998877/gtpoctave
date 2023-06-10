#!/usr/bin/env octave -qf

arg_list=argv();
alt=str2double(arg_list{1});
xm=str2double(arg_list{2});
dtamb=str2double(arg_list{3});

gamma=1.4;
R=8.314;
M=0.0289644;

TAMB=TISA_FROM_ALT(alt) + dtamb;
PAMB=PAMB_FROM_ALT(alt);
PTOTAL=PTOTAL_FROM_MACH(xm, PAMB, gamma);
TTOTAL=TTOTAL_FROM_MACH(xm, TAMB, gamma);
VSOUND=VSOUND_FROM_TAMB(TAMB, gamma, R, M);
RHO=RHO_FROM_PAMB_TAMB(PAMB, TAMB, R, M);

out=['TAMB = ' num2str(TAMB) '°C, PAMB = ' num2str(PAMB) 'Pa, PTOTAL = ' num2str(PTOTAL) 'Pa, TTOTAL = ' num2str(TTOTAL) '°C, RHO = ' num2str(RHO) 'kg/m³, VSOUND = ' num2str(VSOUND) 'm/s'];

disp(out)

