function xprim = f(t, x), xprim = 4*t*x+t, endfunction
function z = g(t, x), z = [x-xmin, xmax-x], endfunction

tmin = -4;
tmax =  4;
xmin = -4;
xmax =  4;

t = tmin:0.5:tmax;
x = xmin:0.5:xmax;
    
nt = size(t, "*");
nx = size(x, "*");
fx = ones(nt, nx);
fy = feval(t, x, f);
champ(t, x, fx, fy);
xlabel("t", "fontsize", 3)
ylabel("x", "fontsize", 3)
title("x'' -  4xt = t", "fontsize", 3);

grafico = get("hdl");
grafico.colored = "on";
ejes = get("current_axes");
ejes.isoview = "on";
xgrid
