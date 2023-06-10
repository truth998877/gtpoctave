function PAMB=PAMB_FROM_ALT(alt)

  PAMB=101325*(1-2.25577*10^-5*(alt/3.2808))^5.25588;

end
