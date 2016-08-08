%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Program Description: Calculates the max package volume based on the
%  given size and weight restrictions
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
max_size = 165;                 % maximum girth (inches)
package_length = [35:10:105];   % package length (inches)

% --- CALCULATIONS ---
package_side = (max_size - package_length)./4;    % calculates length of a side (inches)
package_volume = package_length.*package_side.^2; % calculates volume (cubic inches)

% --- OUTPUTS ----
% Commands below create a plot of package volume as a function of package
% length
plot(package_length,package_volume) 
title('Maximum volume of a UPS package as a function of its length')
xlabel('Length of a package being shipped (in)')
ylabel('Maximum package volume (cu in)')

