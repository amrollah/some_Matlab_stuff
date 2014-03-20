[x, Fs, N] = wavread('org.wav', 'native');

[dif, err] = dpcm('org.wav', 4);
first = x(1);
out = idpcm(dif, first);

tafavot = x - int16(out);

figure(1);
subplot(2,1,1);
plot(err);
title('error');
subplot(2,1,2);
plot(tafavot);
title('difference');
