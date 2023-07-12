#!/usr/bin/env octave -qf

function DISP_AIRPROP(TAMB, PAMB, PTOTAL, TTOTAL, RHO, VSOUND, GAMMA, CP, H)

  out=['TAMB = ' num2str(TAMB) '°C, PAMB = ' num2str(PAMB) 'Pa, PTOTAL = ' num2str(PTOTAL) 'Pa, TTOTAL = ' num2str(TTOTAL) '°C, RHO = ' num2str(RHO) 'kg/m³, VSOUND = ' num2str(VSOUND) 'm/s, GAMMA = ' num2str(GAMMA) ', CP = ' num2str(CP) ', H = ' num2str(H)];

  disp(out)

end
