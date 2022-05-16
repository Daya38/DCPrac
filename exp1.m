fs=50;
T=10;
t=-50:5/(fs):50;
x=rectpuls(t,T);
plot(t,x);
title('Pulse wave of width 10')
axis([-30 30 0 2]);

X = fft(x);
f = linspace(-5,5,1001);
x = abs(fftshift(X));

figure;
plot(f,x);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Magnitude Spectra of Rectangular Pulse');
