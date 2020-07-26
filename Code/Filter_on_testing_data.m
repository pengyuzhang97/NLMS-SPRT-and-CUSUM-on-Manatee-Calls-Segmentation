clc;
clear;

test = load('testing.mat');
T = test.T;
Fs = test.Fs;





%%

% m = filter order
% n = input, and also = desire in this assignment
[y,E_nlms] = NLMS_MSE(5,T,0.00001,0.001);
y_ = y(2:length(y));


figure(1)
stft(T,Fs,'Window',hamming(200,'periodic'),'OverlapLength',100);

figure(2)
stft(y,Fs,'Window',hamming(200,'periodic'),'OverlapLength',100);


save('filter_test.mat', 'y_');
% figure(1)
% plot(y);
% figure(2)
% plot(E_nlms.^2)

