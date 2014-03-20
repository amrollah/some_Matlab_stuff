fsamp =11025; % set sampling frequency 
dt =1/fsamp; % set sampling interval 
dur = 1.5;%set signal duration in seconds 
tt=0:dt:dur; % create vector of time samples 
psi =2*pi*(100+200*tt+500*tt.*tt);% set argument for chirp function 
xx=7.7*cos(psi);% modulate signal 
soundsc(xx,fsamp);% play signal 
for nfft = [2048,1024,256,128] % Window size 
    % Compute spectrogram in Hamming window 
    figure; 
    specgram(xx,nfft,fsamp); 
end 