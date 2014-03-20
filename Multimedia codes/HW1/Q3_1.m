function Q3_1
Fs=8000;
Fc1=1000;
Fc2=2000;
Fc3=3000;
Fc4=5000;
Fc5=6000;
Fc6=7000;
t=0.005;

T = 1/Fs; % Sample period
t_n = [0:T:t]; % Time vector with samples spaced T seconds appart
theta = pi/3; % Phase of the sinusoid
c_n1 = cos(2*pi*Fc1*t_n + theta); % Construct the sinusoid
c_n2 = cos(2*pi*Fc2*t_n + theta); % Construct the sinusoid
c_n3 = cos(2*pi*Fc3*t_n + theta); % Construct the sinusoid
c_n4 = cos(2*pi*Fc4*t_n + theta); % Construct the sinusoid
c_n5 = cos(2*pi*Fc5*t_n + theta); % Construct the sinusoid
c_n6 = cos(2*pi*Fc6*t_n + theta); % Construct the sinusoid

subplot(2,3,1),stem(t_n,c_n1); % Plot the sinusoid
title(['Fc=',num2str(Fc1),', Fs=',num2str(Fs)]);
subplot(2,3,2),stem(t_n,c_n2); % Plot the sinusoid
title(['Fc=',num2str(Fc2),', Fs=',num2str(Fs)]);
subplot(2,3,3),stem(t_n,c_n3); % Plot the sinusoid
title(['Fc=',num2str(Fc3),', Fs=',num2str(Fs)]);
subplot(2,3,4),stem(t_n,c_n4); % Plot the sinusoid
title(['Fc=',num2str(Fc4),', Fs=',num2str(Fs)]);
subplot(2,3,5),stem(t_n,c_n5); % Plot the sinusoid
title(['Fc=',num2str(Fc5),', Fs=',num2str(Fs)]);
subplot(2,3,6),stem(t_n,c_n6); % Plot the sinusoid
title(['Fc=',num2str(Fc6),', Fs=',num2str(Fs)]);

end