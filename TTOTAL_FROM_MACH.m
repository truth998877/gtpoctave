function TTOTAL = TTOTAL_FROM_MACH(xm, tamb, gamma)

  TTOTAL = tamb * (1 + xm^2 * (gamma - 1) / 2);

end
