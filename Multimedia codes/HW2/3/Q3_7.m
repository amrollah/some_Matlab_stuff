[x, Fs, N] = wavread('org.wav', 'native'); 

[dif, err] = dpcm('org.wav', 3);
first = x(1);
f_out = idpcm(dif, first);
max_o = max(abs(f_out));
out = double(f_out) / double(max_o);
wavwrite(out, f, N,'output_3.wav');

[dif, err] = dpcm('org.wav', 2);
first = x(1);
f_out = idpcm(dif, first);
max_o = max(abs(f_out));
out = double(f_out) / double(max_o);
wavwrite(out, f, N,'output_2.wav');
