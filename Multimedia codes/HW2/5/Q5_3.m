[x,fs,n] = wavread('org.wav','native');
size_arr = size(x);
size_x = size_arr(1);
[y,t] = sin_generator(3500, 8000, size_x);
y = int16(y * double(max(abs(x))) / 10.0);

sum = y + x;

figure(1);

subplot(2,1,1);
plot(t, x);
title('original');

subplot(2,1,2);
plot(t, sum);
title('sum of two signals');

wavwrite(sum, fs, n, 'sum.wav');