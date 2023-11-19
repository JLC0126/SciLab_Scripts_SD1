function [xdot]= ED (t,xv)
xdot(1) = -3*xv(1) + 4*xv(2); 
xdot(2) = -2*xv(1)+3*xv(2);
endfunction

xf = -5:0.5:5, yf=-5:0.5:5;

fchamp(ED,0,xf,yf);
grafico = get("hdl");
grafico.colored = "on";
ejes = get("current_axes");
xlabel('x');
ylabel('y');

title([_("x''=-3x+4y")
    "y''=-2x+3y"], "fontsize", 3);

ejes.isoview = "on";
xgrid
