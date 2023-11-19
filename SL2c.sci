function [xdot]= ED (t,xv)
xdot(1) = -6*xv(1) + 5*xv(2); 
xdot(2) = -5*xv(1)+ 4*xv(2);
endfunction

xf = -5:0.5:5, yf=-5:0.5:5;

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
