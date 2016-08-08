%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%  Program Description: Calculates and plots tempereature of gas based on
%  varrying inputs
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- INPUTS ---
%defines constant n (number of moles of gas) with units moles
n = 2;       
%defines constant a (gas characteristic) with units (L^2*bar)/mol^2
a = 5.536;   
%defines constant b (gas characteristic) with units L/mol
b = 0.03049;    
%defines constant R (ideal gas constant) with units (L*bar)/(K*mol)
R = 0.08314472; 

%Part (a)
%defines P_a (pressure) as 10 values from 0 to 400 bars
P_a = linspace(0, 400, 10); 
%defines V_a (volume) as 1 liter
V_a = 1;
    
%Part (b)
%defines P_b (pressure) as 220 bars
P_b = 220;
%defines V_b (volume) as 10 values from 0.1 to 10.0 liters
V_b = linspace(0.1, 10.0, 10);

%Part (c)
%defines P_c (pressure) as 10 values from 0 to 400 bars
P_c = linspace(0, 400, 10);
%defines V_c (volume) as 10 values from 0.1 to 10.0 liters
V_c = linspace(0.1, 10.0, 10);
    
% --- CALCULATIONS ---
%Part (a)
%calculates T_a (temperature) values based on Part (a) data
T_a = ((P_a + (n^2 * a) / (V_a^2)) * (V_a - n * b)) / (n * R);
    
%Part (b)
%calculates T_b (temperature) values based on Part (b) data
T_b = ((P_b + (n^2 * a) ./ (V_b.^2)) .* (V_b - n * b)) ./ (n * R);

%Part (c)
%calculates T_c (temperature) values based on Part (c) data
T_c = ((P_c + (n^2 * a) ./ (V_c.^2)) .* (V_c - n * b)) ./ (n * R);

% --- OUTPUTS ----
%Part (a)
%T_a =
%
%1.0e+003 *
%
%Columns 1 through 7
%
%0.1250    0.3760    0.6270    0.8780    1.1289    1.3799    1.6309
%
%Columns 8 through 10
%
%1.8819    2.1328    2.3838

%plots T_a (temperature) as a function of P_a (pressure)on figure 1
figure(1);
plot(P_a, T_a);
xlabel('Pressure (Bars)');
ylabel('Temperature (Kelvin)');
title('Temperature (Kelvin) as a Function of Pressure (Bars)');
grid;
    

%Part (b)
%T_b =
%
%1.0e+004 *
%
%Columns 1 through 7
%
%0.0571    0.1612    0.3019    0.4456    0.5902    0.7352    0.8803
%
%Columns 8 through 10
%
%1.0256    1.1709    1.3163
        
%plots T_b (temperature) as a function of V_b (volume)on figure 2
figure(2);
plot(V_b, T_b);
xlabel('Volume (Liters)');
ylabel('Temperature (Kelvin)');
title('Temperature (Kelvin) as a Function of Volume (Liters)');
grid;


%Part (c)
%T_c =
%
%  1.0e+004 *
%
%  Columns 1 through 7
%
%    0.0520    0.0410    0.1253    0.2716    0.4775    0.7426    1.0666
%
%  Columns 8 through 10
%
%    1.4496    1.8914    2.3921