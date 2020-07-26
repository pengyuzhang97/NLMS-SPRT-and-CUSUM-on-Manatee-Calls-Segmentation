clc;
clear;

% test_filter_ = load('filter_test.mat');
% test_filter = test_filter_.y_;

test_ = load('testing.mat');
fs = test_.Fs;
test = test_.T.';

%%
% manatee model load  
W1 = load('W1.mat').W1;
W2 = load('W2.mat').W2;
W3 = load('W3.mat').W3;
W4 = load('W4.mat').W4;
W5 = load('W5.mat').W5;
W6 = load('W6.mat').W6;
W7 = load('W7.mat').W7;
W8 = load('W8.mat').W8;
W9 = load('W9.mat').W9;
W10 = load('W10.mat').W10;   


[call] = datapreprocess(300,test);

%%
% noise model load   
Wn = load('Wn.mat').W_n;
[noise] = datapreprocess(3,test);

%% predicted
pre1 = W1.'*call;
pre2 = W2.'*call;
pre3 = W3.'*call;
pre4 = W4.'*call;
pre5 = W5.'*call;
pre6 = W6.'*call;
pre7 = W7.'*call;
pre8 = W8.'*call;
pre9 = W9.'*call;
pre10 = W10.'*call;     

prenoise = Wn.'*noise;  

% % error
% error = zeros(11,length(test));
% error(1,:) = test-pre1;
% error(2,:) = test-pre2;
% error(3,:) = test-pre3;
% error(4,:) = test-pre4;
% error(5,:) = test-pre5;
% error(6,:) = test-pre6;
% error(7,:) = test-pre7;
% error(8,:) = test-pre8;
% error(9,:) = test-pre9;
% error(10,:) = test-pre10;
% error(11,:) = test-prenoise;


error = zeros(10,length(test));
error(1,:) = prenoise-pre1;
error(2,:) = prenoise-pre2;
error(3,:) = prenoise-pre3;
error(4,:) = prenoise-pre4;
error(5,:) = prenoise-pre5;
error(6,:) = prenoise-pre6;
error(7,:) = prenoise-pre7;
error(8,:) = prenoise-pre8;
error(9,:) = prenoise-pre9;
error(10,:) = prenoise-pre10;

%%
Moving_error = zeros(10,length(test));
num = 300;

for j = 1:10
    Moving_error(j,1:num-1) = abs(error(j,1:num-1));
    for p = num:length(test)
        Moving_error(j,p) = mean(abs(error(j,p-num+1:p)));
    end
end
%%



[M,index] = max(Moving_error);
sq_wave = zeros(1,length(test));
th = 0.079;

for i = 1:length(M)
    if M(i)>th
        sq_wave(i) = 1;
    elseif M(i)<th
        sq_wave(i) = 0;
        
    end
end


% Min
% [M,index] = min(Moving_error);
% sq_wave = zeros(1,length(test));
% th = 0.0029;
% 
% for i = 1:length(index)
%    if index(i) == 11
%        sq_wave(i) = 0;
%    elseif index(i)~= 11
%        sq_wave(i) = 1;
%    end
% end



% plot
time = 1/fs:1/fs:length(test)/fs;

% figure(1)
% plot(time,test);

figure(2)
plot(time,sq_wave);
label = 1:30;
set(gca,'xtick',(label));





%% analyse on test
% stft(test,fs,'Window',hamming(200,'periodic'),'OverlapLength',100);

% figure(3)
% stft(error(8,:),fs,'Window',hamming(200,'periodic'),'OverlapLength',100);













