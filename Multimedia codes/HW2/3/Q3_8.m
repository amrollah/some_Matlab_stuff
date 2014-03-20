[x, Fs, N] = wavread('org.wav', 'native');

figure(1);

[dif, err] = dpcm('org.wav', 4);
first = x(1); 
out = idpcm(dif, first);
diff4 = x - int16(out);

subplot(3,1,1);
plot(diff4);
title('original vs n = 4');


[dif, err] = dpcm('org.wav', 3);
first = x(1); 
out = idpcm(dif, first);
diff3 = x - int16(out);

subplot(3,1,2);
plot(diff3);
title('original vs n = 3');


[dif, err] = dpcm('org.wav', 2);
first = x(1);
out = idpcm(dif, first);
diff2 = x - int16(out);

subplot(3,1,3);
plot(diff2);
title('original vs n = 2');

