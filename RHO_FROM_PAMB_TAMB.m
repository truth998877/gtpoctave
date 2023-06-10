function RHO=RHO_FROM_PAMB_TAMB(pamb, tamb, R, M)

  RHO=pamb * M/(R * tamb);

end
