fs = 1000;

[y, t] = beat_note_generator();

for nfft = [512, 256, 128, 64]
    figure; 
    spectrogram(y,nfft,nfft-10,nfft,fs);
    colormap(1-gray(256));
end 
