for dsr = [2, 3, 5, 8]
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
    n = 100;
    filter_coeff = fir1(n, 1/dsr); 
    filteredSound = filter( filter_coeff, 1, y );
     %Downsample 
    fprintf('\n the downsampled sound \n'); 
    x=filteredSound(1:dsr:length(filteredSound)); 
    sound(x,Fs/dsr); 
    pause; 
    %save down sample az down.wav 
    wavwrite(x,Fs/dsr,['down_pre-filter_', num2str(dsr), '.wav']);
end