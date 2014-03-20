for dsr = [2, 3, 5]
    %infilename is your signalname and dsr is downsampling rate 
    fprintf('\n the origional sound \n') 
    [y,Fs]=wavread('Audio_16KHz_8bits.wav'); 
    % Fs is sample rate in Hz 
    if(rem(length(y),dsr)~=0) 
        y=y(1:length(y)- rem(length(y),dsr)); 
    end 
    %play it 
    sound(y,Fs) 
    pause; 
     %Downsample 
    fprintf('\n the downsampled sound \n'); 
    x=y(1:dsr:length(y)); 
    sound(x,Fs/dsr); 
    pause; 
    %save down sample az down.wav 
    wavwrite(x,Fs/dsr,['down_', num2str(dsr), '.wav']);
end