function TISA=TISA_FROM_ALT(alt)

  if alt < 36089  
    TISA=288.15-(0.0065*alt);
  elseif alt >= 36089
    TISA=216.65;
  end

end
