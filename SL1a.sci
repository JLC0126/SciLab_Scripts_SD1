function [xdot]= ED (t,xv)
xdot(1) = 1; 
xdot(2) = xv(2)+xv(2)^2;
endfunction

xf = -5:0.5:5, yf=-5:0.5:5;

fchamp(ED,0,xf,yf);
grafico = get("hdl");
grafico.colored = "on";
ejes = get("current_axes");

xlabel('t');
ylabel('x');
title('x′= x + x^2');

ejes.isoview = "on";
xgrid
