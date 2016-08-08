function [vol,area] = cone_calcs(r,h)
%
%
%
%
%
%

if r<=0 || h<=0
    error('The cone must have a positive dimensions')
    
    base = pi*r^2;
    sides = pi*r*sqrt(r^2 + H^2);
else
    V = 1/3*base*H;
    A = sides + base;
end
