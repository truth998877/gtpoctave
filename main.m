#!/usr/bin/env octave -qf

arg_list=argv();
alt=str2double(arg_list{1});
xm=str2double(arg_list{2});
dtamb=str2double(arg_list{3});

gamma=1.4;

TAMB=TISA_FROM_ALT(alt) + dtamb;
PAMB=PAMB_FROM_ALT(alt);
PTOTAL=PTOTAL_FROM_MACH(xm, PAMB, gamma);
TTOTAL=TTOTAL_FROM_MACH(xm, TAMB, gamma);

out=['TAMB = ' num2str(TAMB) '°C, PAMB = ' num2str(PAMB) 'Pa, PTOTAL = ' num2str(PTOTAL) 'Pa, TTOTAL = ' num2str(TTOTAL) '°C'];

disp(out)

