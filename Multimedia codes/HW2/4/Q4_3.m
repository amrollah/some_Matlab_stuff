fs = 1000;

[y, t] = beat_note_generator();

for nfft = [2048, 1024, 256, 128, 64]
    figure; 
    specgram(y,nfft,fs);
    colormap(1-gray(256));
end 

