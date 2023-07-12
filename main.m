#!/usr/bin/env octave -qf

  
arg_list=argv();
alt=str2double(arg_list{1});
xm=str2double(arg_list{2});
dtamb=str2double(arg_list{3});


[TAMB,PAMB,PTOTAL,TTOTAL,RHO,VSOUND,GAMMA,CP,H]=AIR_PROP(alt,xm,dtamb);
DISP_AIRPROP(TAMB,PAMB,PTOTAL,TTOTAL,RHO,VSOUND,GAMMA,CP,H);
  
