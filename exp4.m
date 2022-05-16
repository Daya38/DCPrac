sampleRate = 100;
samplePeriod = 10/sampleRate;
signalFreq = 0.5;
nT = 0:samplePeriod:3;
signal = cos(2*pi*signalFreq*nT);
figure;
plot(nT, signal)
figure;
xlabel('Time (sec)')
ylabel('Amplitude')
t=1:10;
x=signal;
mx=max(abs(x));
q256=mx*(1/128)*floor(128*(x/mx));
stem(q256)
e256 = (1/10)*sum(abs(x-q256));
disp(e256);