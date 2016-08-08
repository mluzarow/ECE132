function [volume, surface_area] = torus(inner_radius, outer_radius)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% FUNCTION NAME: Calculates the volume and surface area of a torus by the
% given inner and outer radii
% INPUTS: List them below one line per input argument
% 1) inner_radius: The inner radius of the torus.
% 2) outer_radius: The outer radius of the torus.
%  
% OUTPUTS: List them below line per output argument
% 1) volume: The volume of the torus.
% 2) surface_area: The surface area of the torus.
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Calculates the volume of the torus.
volume = (1/4) * pi^2 * (inner_radius + outer_radius) * (outer_radius - inner_radius)^2;
%Calculates the surface area of the torus.
surface_area = pi^2 * (outer_radius^2 - inner_radius^2);

% [volume, surface_area] = torus(1,2)
%
% volume =
%
%    7.4022
%
%
% surface_area =
%
%   29.6088
%
% [volume, surface_area] = torus(7,13)
%
% volume =
%
%  1.7765e+003
%
%
% surface_area =
%
%  1.1844e+003