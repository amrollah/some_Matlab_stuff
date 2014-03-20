fs = 8000;
t = 0.01;
figure(1);
counter = 1;
N = 2^14; % FFT size 
f = ([0:N-1]/N - 0.5)*fs; % The frequency vector for plotting 
for fc = [1, 2, 3, 5, 6, 7]
    subplot(3, 2, counter);
    [ c_n, t_n ] = Q3_1_func( fs, fc*1000, t );
    C = fftshift(fft(c_n,N)); % Compute the FFT and rearrange the output 
    plot(f,10*log10(abs(C))); % Plot the magnitude of the spectrum on a log scale 
    title(['frequency domain: fs = 8KHz, fc = ', num2str(fc), 'KHz']);
    counter = counter + 1;
end