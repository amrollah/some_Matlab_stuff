fs = 1000;

[y, t] = beat_note_generator();

nfft=2048;
specgram(y,nfft,fs);
colormap(1-gray(256));