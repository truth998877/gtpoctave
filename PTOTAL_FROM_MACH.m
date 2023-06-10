function PTOTAL=PTOTAL_FROM_MACH(xm, pamb, gamma)

  PTOTAL = pamb * ((1 + (( gamma - 1) /2) * xm^2 )^(gamma / (gamma - 1)));

end


