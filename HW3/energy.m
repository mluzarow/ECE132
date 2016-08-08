function energy = energy(mass)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%
% FUNCTION NAME: Calculates energy with given masses.
% INPUTS: List them below one line per input argument
% 1) mass: Array of masses (kg).
%  
% OUTPUTS: List them below line per output argument
% 1) energy: Calculated energy based on masses (J).
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calculates energy based on given mass(es) using formula E = mc^2.
energy = mass .* (2.9979E8)^2;

%Creates a plot with a logarithmicly increasing x axis for mass vs energy.
semilogx(mass, energy, 'red');
xlabel('Mass (kg)');
ylabel('Energy (J)');
title('Energy (J) as a result of mass (kg)');
grid;

%energy = energy(logspace(0,6,10))
%
%energy =
%
%  1.0e+022 *
%
%  Columns 1 through 7
%
%    0.0000    0.0000    0.0002    0.0009    0.0042    0.0194    0.0899
%
%  Columns 8 through 10
%
%    0.4172    1.9363    8.9874