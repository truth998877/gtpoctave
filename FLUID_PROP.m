function [GAMMA CP H VSOUND RHO]=FLUID_PROP(fluid, ps, ts, R, M)

[GAMMA, CP, H] = GAMMA_CP_FROM_TAMB(ts, fluid);
VSOUND=VSOUND_FROM_TAMB(ts, GAMMA, R, M);
RHO=RHO_FROM_PAMB_TAMB(ps, ts, R, M);

end 

function VSOUND=VSOUND_FROM_TAMB(ts, gamma, R, M)

  VSOUND = (gamma * R * ts / M )^0.5;

end


function RHO=RHO_FROM_PAMB_TAMB(ps, ts, R, M)

  RHO=ps * M/(R * ts);

end


function [GAMMA, CP, H] = GAMMA_CP_FROM_TAMB(ts, fluid)

  switch fluid

    case 'dry air'

      A0 = 0.992313;
      A1 = 0.236688;
      A2 = -1.852148;
      A3 = 6.083152;
      A4 = -8.893933;
      A5 = 7.097112;
      A6 = -3.234725;
      A7 = 0.794571;
      A8 = -0.081873;
      A9 = 0.422178;
      A10 = 0.001053;

      R = 287.05;
    
    case 'O2'

      A0 = 1.006450;
      A1 = -1.047869;
      A2 = 3.729558;
      A3 = -4.934172;
      A4 = 3.284147;
      A5 = -1.095203;
      A6 = 0.145737;
      A7 = 0;
      A8 = 0
      A9 = 0.369790
      A10 = 0.000491 
    
  end

  TZ=ts/1000;
  
  CP = A0 + A1 * TZ + A2 * TZ^2 + A3 * TZ^3 + A4 * TZ^4 + A5 * TZ^5 + A6 * TZ^6 + A7 * TZ^7 + A8 * TZ^8 + A9 * TZ^9 + A10 * TZ^10;
  CP = CP * 1000;
  GAMMA = CP / (CP - R);

  H = A0*TZ + A1/2 * TZ^2 + A2/3 * TZ^3 + A3/4 * TZ^4 + A4/5 * TZ^5 + A5/6 * TZ^6 + A6/7 * TZ^7 + A7/8 * TZ^8 + A8/9 * TZ^9 + A9;
end
