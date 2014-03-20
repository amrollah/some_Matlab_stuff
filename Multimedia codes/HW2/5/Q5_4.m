[x,fs,n] = wavread('org.wav','native');
size_arr = size(x);
size_x = size_arr(1);
[y,t] = sin_generator(3500, 8000, size_x);
y = int16(y * double(max(abs(x))) / 10.0);

sum = y + x;

filter_coeff = fir1(50, 1/4, 'high'); 
filteredSound = filter( filter_coeff, 1, double(sum) );

sound(filteredSound);
wavwrite(filteredSound, fs, n, 'filtered.wav');