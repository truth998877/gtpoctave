function [PT TT]=PTTOTAL_FROM_MACH(xm, ps, ts, gamma)

PT=PTOTAL_FROM_MACH(xm, ps, gamma);
TT=TTOTAL_FROM_MACH(xm, ts, gamma);

end

function PTOTAL=PTOTAL_FROM_MACH(xm, ps, gamma)

  PTOTAL = ps * ((1 + (( gamma - 1) /2) * xm^2 )^(gamma / (gamma - 1)));

end

function TTOTAL = TTOTAL_FROM_MACH(xm, ts, gamma)

  TTOTAL = ts * (1 + xm^2 * (gamma - 1) / 2);

end
