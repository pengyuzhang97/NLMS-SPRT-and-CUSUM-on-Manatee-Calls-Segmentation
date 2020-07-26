clc;
clear;


fs = 48000;

%
noise = load('noise_train.mat');
n = noise.N.';
fs_n = noise.Fs_n;
%

train = load('manatee_1-10.mat');
x1 = train.manatee{1};
x2 = train.manatee{2};
x3 = train.manatee{3};
x4 = train.manatee{4};
x5 = train.manatee{5};
x6 = train.manatee{6};
x7 = train.manatee{7};
x8 = train.manatee{8};
x9 = train.manatee{9};
x10 = train.manatee{10};

figure(101)
stft(x1,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(102)
stft(x2,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(103)
stft(x3,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(104)
stft(x4,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(105)
stft(x5,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(106)
stft(x6,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(107)
stft(x7,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(108)
stft(x8,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(109)
stft(x9,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(110)
stft(x10,fs,'Window',hamming(100,'periodic'),'OverlapLength',50);

figure(111)
stft(n,fs_n,'Window',hamming(100,'periodic'),'OverlapLength',50);

