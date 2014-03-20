function Q2_1
fs = 5000; % Sample frequency
T = 1/fs; % Sample period
t_n = [0:T:3]; % Time vector with samples spaced T seconds appart
t_n1 = [0:T:1.5]; % Time vector with samples spaced T seconds appart
t_n2 = [0:T:0.75]; % Time vector with samples spaced T seconds appart
t_n3 = [0:T:0.3]; % Time vector with samples spaced T seconds appart
fc = 10; % Frequency of the sinusoid
theta = pi/3; % Phase of the sinusoid
c_n = cos(2*pi*fc*t_n + theta); % Construct the sinusoid
c_n1 = cos(2*pi*fc*t_n1 + theta); % Construct the sinusoid
c_n2 = cos(2*pi*fc*t_n2 + theta); % Construct the sinusoid
c_n3 = cos(2*pi*fc*t_n3 + theta); % Construct the sinusoid

subplot(2,2,1),plot(t_n,c_n); % Plot the sinusoid
title('cos(2\pitFc+\theta) , 0<t<3');
subplot(2,2,2),plot(t_n1,c_n1); % Plot the sinusoid
title('cos(2\pitFc+\theta) , 0<t<1.5');
subplot(2,2,3),plot(t_n2,c_n2); % Plot the sinusoid
title('cos(2\pitFc+\theta) , 0<t<0.75');
subplot(2,2,4),plot(t_n3,c_n3); % Plot the sinusoid
title('cos(2\pitFc+\theta) , 0<t<0.3');
end