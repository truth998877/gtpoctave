#!/usr/bin/env octave -qf

function [TAMB,PAMB,PTOTAL,TTOTAL,RHO,VSOUND,GAMMA,CP,H]=AIR_PROP(alt,xm,dtamb)
  
  arg_list=argv();
  alt=str2double(arg_list{1});
  xm=str2double(arg_list{2});
  dtamb=str2double(arg_list{3});
  
  R=8.314;
  M=0.0289644;
  
  TAMB=TISA_FROM_ALT(alt) + dtamb;
  PAMB=PAMB_FROM_ALT(alt);
  [GAMMA, CP, H, VSOUND, RHO]=FLUID_PROP('dry air', PAMB, TAMB, R, M);
  
  [PTOTAL, TTOTAL]=PTTOTAL_FROM_MACH(xm, PAMB, TAMB, GAMMA);

end
