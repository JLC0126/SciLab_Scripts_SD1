function [xdot]= ED (t,xv)
xdot(1) =1;
xdot(2) = sin(2*xv(2)); 

endfunction

xf = -6:0.5:6, yf=-6:0.5:6;

fchamp(ED,0,xf,yf);
grafico = get("hdl");
grafico.colored = "on";
ejes = get("current_axes");

xlabel('t');
ylabel('x');
title('x′=sen(2x)');

ejes.isoview = "on";
xgrid
