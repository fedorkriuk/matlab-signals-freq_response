[x, fs] = audioread('sample3a.wav');

t = [0:length(x)-1]/fs;
ak = fft(x)/length(x);
f = [-length(x)/2 : length(x)/2 - 1]*fs/length(x);
akp = (abs(ak)>0.001).*angle(ak);

figure(1);
subplot(211); plot(f, abs(fftshift(ak))); ylabel('abs ak'); grid;
subplot(212); plot(f, fftshift(a)); ylabel('< ak'); grid;
xlabel('f [Hz]');

figure(2);
y = 2*(0.0899*cos((806)*2*pi*t+pi/4) + 0.29*cos((6000)*2*pi*t+pi) + 0.1*cos((24000)*2*pi*t));
subplot(311); plot(t(1:900), x(1:900)); grid;
subplot(312); plot(t(1:900), y(1:900)); grid;
ylabel('x(t)');
