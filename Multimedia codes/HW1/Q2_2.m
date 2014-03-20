function Q2_2
fs = 5000; % Sample frequency
T = 1/fs; % Sample period
t_n = [0:T:3]; % Time vector with samples spaced T seconds appart
fc = 10; % Frequency of the sinusoid
theta = pi/3; % Phase of the sinusoid
c_n = cos(2*pi*fc*t_n + theta); % Construct the sinusoid
N = 2^14; % FFT size
f = ([0:N-1]/N - 0.5)*fs; % The frequency vector for plotting
C = fftshift(fft(c_n,N)); % Compute the FFT and rearrange the output
subplot(2,2,1),plot(f,10*log10(abs(C))); % Plot the magnitude of the spectrum on a log scale
title('C(\omega)');
subplot(2,2,2),plot(f,10*log10(abs(C)));
axis([-20 20 0 40]);
title('C(\omega) , -20<\omega<20');
subplot(2,2,3),plot(f,10*log10(abs(C)));
axis([8 12 0 40]);
title('C(\omega) , 8<\omega<12');
end