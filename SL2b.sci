function [xdot]= ED (t,xv)
xdot(1) = -xv(1) + 2*xv(2); 
xdot(2) = -xv(1)+ xv(2);
endfunction

xf = -4:0.5:4, yf=-4:0.5:4;

fchamp(ED,0,xf,yf);
grafico = get("hdl");
grafico.colored = "on";
ejes = get("current_axes");
xlabel('x');
ylabel('y');

title([_("x''=-x+2y")
    "y''=-x+y"], "fontsize", 3);

ejes.isoview = "on";
xgrid
