%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Program Description: Plots the trig functions sine and cosine.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
angles_rad = (0:0.05:2*pi);             % Angles in radians
% --- CALCULATIONS ---
sin_of_angles = sin(angles_rad);        % Sin of angles
cos_of_angles = cos(angles_rad);        % Cos of angles
% --- OUTPUTS ----
hold;                                   % Toggles plot hold ON
plot(angles_rad,sin_of_angles,'ro--');  % Plots the sine function with circles in red
plot(angles_rad,cos_of_angles,'go--');  % Plots the cosine function with circles in green
xlabel('Angles (radians)');             % Sets plot x-axis to "Angles (radians)"
ylabel('Amplitude');                    % Sets plot y-axis to "Amplitude"
title('Trig Functions');                % Sets plot title to "Trig Functions
legend('Sin','Cos');                    % Creates legend in default upper-left with "Sin" and "Cos"
grid;                                   % Toggles gridlines ON

