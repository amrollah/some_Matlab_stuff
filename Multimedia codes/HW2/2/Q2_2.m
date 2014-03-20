function output = Q2_2()
[y,f,n]=wavread('org.wav','native');
m = 32768;
output = 127 * mu_law(double(y)/m);
subplot(2,1,1);
plot(y);
title('Original signal');
subplot(2,1,2);
plot(result);
title('Quantized');

soundsc(double(y));
soundsc(double(int8(result)));

end