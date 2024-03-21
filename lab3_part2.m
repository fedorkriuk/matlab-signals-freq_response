[B1, A1] = butter(10, [0.2 0.8]);
[H1, fh] = freqz(B1, A1, 1e3, fs);

figure(3)
subplot(411); plot(fh,abs(H1)); axis([0 fs/2 0 1.2]); grid; ylabel('|H1|'); 
subplot(412); plot(fh,angle(H1)); axis([0 fs/2 -pi pi]); grid; ylabel('< H1')
xlabel('f (Hz)');

figure(4);
y = filter(B1, A1, x);
subplot(511); subplot(312); plot(t(1:900), y(1:900)); grid;
ylabel('y(t)'); xlabel('time (s)');
