N = 128;
x1 = ones(1, 4);
x2 = ones(1, 6);
n1 = length(x1);
n2 = length(x2);
x1 = [x1, zeros(1, N - n1)];
x2 = [x2, zeros(1, N - n2)];
n = 0 : N - 1;
k = 0 : N - 1;
w = 2 * pi * k / N;
X1 = fft(x1);
X2 = fft(x2);
f0 = 8;
Y = [zeros(1, f0), X1(1 : N - f0)];
y1 = x1 .* exp(1j * 2 * pi * f0 * n);
Y1 = fft(y1);
figure(4);
subplot(211);
plot(w, abs(X1), 'LineWidth', 1);
hold on;
plot(w, abs(Y), 'LineWidth', 1);
xlim([0 2 * pi]);
xlabel('w');
ylabel('Magnitude');
title('X1 (DFT [x1]) & X1(f - f0)');
subplot(212);
stem(w, abs(Y1), 'filled');
xlim([0 2 * pi]);
xlabel('w');
ylabel('Magnitude');
title('DFT [x1 * exp(j*2*pi*f0*n)]');
