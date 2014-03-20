[x,f,n] = wavread('org.wav', 'native');
x1 = double(x) / 32768;
y = mu_law(x1);
x_p = mu_law_inv(y) * 32768;
e = double(x_p) - double(x);


figure(1);
subplot(3,1,1);
plot(x);
title('Input signal: x[n]');
subplot(3,1,2);
plot(x_p);
title('Output of Inv: F^{-1}(F(x[n]))');
subplot(3,1,3);
plot(e);
title('Error');

wavwrite(double(x_p) / 32768,f,16,'output.wav');