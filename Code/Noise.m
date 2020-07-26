[N,Fs_n] = audioread('noise_signal.wav');

% [psd,w] = periodogram(N);
% 
% figure(1)
% subplot(2,1,1)
% stft(N,Fs,'Window',hamming(200,'periodic'),'OverlapLength',100);
% subplot(2,1,2)
% periodogram(N,rectwin(length(N)),Fs);


save('noise_train.mat', 'N','Fs_n')