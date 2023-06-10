function VSOUND=VSOUND_FROM_TAMB(tamb, gamma, R, M)

  VSOUND = (gamma * R * tamb / M )^0.5;

end
