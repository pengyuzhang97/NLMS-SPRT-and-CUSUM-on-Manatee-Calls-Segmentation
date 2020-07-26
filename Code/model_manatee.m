clc;
clear;


fs = 48000;

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

m = 300;




%%

[y1,E1_nlms,W_nlms] = NLMS_MSE(m,x1,1.05,0.001);

% figure(1)
% plot(fftshift(abs(fft(x1))));
% hold on;
% plot(fftshift(abs(fft(y1))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y1); 
% hold on; 
% plot(x1+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(4)
% plot(fftshift(abs(fft(x1)))-fftshift(abs(fft(y1(2:length(y1))))))
% 
% figure(5)
% plot(W_nlms.');

W1 = W_nlms(:,length(W_nlms));

save('W1.mat','W1')




%%
%2


[y4,E2_nlms,W2_nlms] = NLMS_MSE(m,x2,1.5,0.001);

% figure(1)
% plot(fftshift(abs(fft(x2))));
% hold on;
% plot(fftshift(abs(fft(y4))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y4); 
% hold on; 
% plot(x2+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x2,y4))
% max(xcorr(x2,y4))
% 
% figure(4)
% plot((fftshift(abs(fft(x2)))-fftshift(abs(fft(y4(2:length(y4)))))).^2)



W2 = W2_nlms(:,length(W2_nlms));
save('W2.mat','W2')


%%
%3

[y3,E3_nlms,W3_nlms] = NLMS_MSE(m,x3,1.55,0.001);

% figure(1)
% plot(fftshift(abs(fft(x3))));
% hold on;
% plot(fftshift(abs(fft(y3))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y3); 
% hold on; 
% plot(x3+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x3,y3))
% max(xcorr(x3,y3))
% 
% figure(4)
% plot((fftshift(abs(fft(x3)))-fftshift(abs(fft(y3(2:length(y3)))))).^2)




W3 = W3_nlms(:,length(W3_nlms));
save('W3.mat','W3')


%%
%4
[y4,E4_nlms,W4_nlms] = NLMS_MSE(m,x4,1.1,0.001);

% figure(1)
% plot(fftshift(abs(fft(x4))));
% hold on;
% plot(fftshift(abs(fft(y4))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y4); 
% hold on; 
% plot(x4+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x4,y4))
% max(xcorr(x4,y4))
% 
% figure(4)
% plot((fftshift(abs(fft(x4)))-fftshift(abs(fft(y4(2:length(y4)))))).^2)



W4 = W4_nlms(:,length(W4_nlms));
save('W4.mat','W4')



%%
%5
[y5,E5_nlms,W5_nlms] = NLMS_MSE(m,x5,1.255,0.001);

% figure(1)
% plot(fftshift(abs(fft(x5))));
% hold on;
% plot(fftshift(abs(fft(y5))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y5); 
% hold on; 
% plot(x5+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x5,y5))
% max(xcorr(x5,y5))
% 
% figure(4)
% plot((fftshift(abs(fft(x5)))-fftshift(abs(fft(y5(2:length(y5)))))).^2)

W5 = W5_nlms(:,length(W5_nlms));
save('W5.mat','W5')


%%
%6
[y6,E6_nlms,W6_nlms] = NLMS_MSE(m,x6,1.05,0.001);

% figure(1)
% plot(fftshift(abs(fft(x6))));
% hold on;
% plot(fftshift(abs(fft(y6))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y6); 
% hold on; 
% plot(x6+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x6,y6))
% max(xcorr(x6,y6))
% 
% figure(4)
% plot((fftshift(abs(fft(x6)))-fftshift(abs(fft(y6(2:length(y6)))))).^2)

W6 = W6_nlms(:,length(W6_nlms));
save('W6.mat','W6')



%%
%7
[y7,E7_nlms,W7_nlms] = NLMS_MSE(m,x7,1.2,0.001);

% figure(1)
% plot(fftshift(abs(fft(x7))));
% hold on;
% plot(fftshift(abs(fft(y7))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y7); 
% hold on; 
% plot(x7+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x7,y7))
% max(xcorr(x7,y7))
% 
% figure(4)
% plot((fftshift(abs(fft(x7)))-fftshift(abs(fft(y7(2:length(y7)))))).^2)

W7 = W7_nlms(:,length(W7_nlms));
save('W7.mat','W7')


%%
%8
[y8,E8_nlms,W8_nlms] = NLMS_MSE(m,x8,1.18,0.001);

% figure(1)
% plot(fftshift(abs(fft(x8))));
% hold on;
% plot(fftshift(abs(fft(y8))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y8); 
% hold on; 
% plot(x8+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x8,y8))
% max(xcorr(x8,y8))
% 
% figure(4)
% plot((fftshift(abs(fft(x8)))-fftshift(abs(fft(y8(2:length(y8)))))).^2)

W8 = W8_nlms(:,length(W8_nlms));
save('W8.mat','W8')


%%
%9
[y9,E9_nlms,W9_nlms] = NLMS_MSE(m,x9,1.25,0.001);

% figure(1)
% plot(fftshift(abs(fft(x9))));
% hold on;
% plot(fftshift(abs(fft(y9))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y9); 
% hold on; 
% plot(x9+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x9,y9))
% max(xcorr(x9,y9))
% 
% figure(4)
% plot((fftshift(abs(fft(x9)))-fftshift(abs(fft(y9(2:length(y9)))))).^2)

W9 = W9_nlms(:,length(W9_nlms));
save('W9.mat','W9')

%%
%10
[y10,E10_nlms,W10_nlms] = NLMS_MSE(m,x10,1.01,0.001);

% figure(1)
% plot(fftshift(abs(fft(x10))));
% hold on;
% plot(fftshift(abs(fft(y10))));
% hold off;
% legend('original','predict')
% 
% figure(2)
% plot(y10); 
% hold on; 
% plot(x10+2); 
% hold off; 
% legend('predict', 'original')
% 
% figure(3)
% plot(xcorr(x10,y10))
% max(xcorr(x10,y10))
% 
% figure(4)
% plot((fftshift(abs(fft(x10)))-fftshift(abs(fft(y10(2:length(y10)))))).^2)
% 
% 
% figure(5)
% plot(E10_nlms.^2)

W10 = W10_nlms(:,length(W10_nlms));
save('W10.mat','W10')



