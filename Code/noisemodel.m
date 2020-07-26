clc;
clear;

noise = load('noise_train.mat');
 n = noise.N.';
 
 % fs = 44100
 m_noise = 3;
 
[y,E_nlms,W_nlms] = NLMS_MSE(m_noise,n,1.1,0.001);

% figure(1)
% plot(fftshift(abs(fft(n))));
% hold on;
% plot(fftshift(abs(fft(y))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y); 
% hold on; 
% plot(n+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(n,y))
% max(xcorr(n,y))
% 
% figure(4)
% plot((fftshift(abs(fft(n)))-fftshift(abs(fft(y(2:length(y)))))).^2)
% 
% 
% figure(5)
% plot(E_nlms.^2)

% plot(W_nlms.');

W_n = W_nlms(:,length(W_nlms));
save('Wn.mat','W_n')