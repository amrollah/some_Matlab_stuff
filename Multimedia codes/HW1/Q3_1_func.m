function [ c_n, t_n ] = Q3_1_func( fs, fc, t )
    T = 1/fs; % Sample period 
    t_n = [0:T:t]; % Time vector with samples spaced T seconds appart 
    theta = pi/3; % Phase of the sinusoid 
    c_n = cos(2*pi*fc*t_n + theta); % Construct the sinusoid 
end
