[x,fs,n] = wavread('org.wav','native');
size_arr = size(x);
size_x = size_arr(1);
[y,t] = sin_generator(3500, 8000, size_x);