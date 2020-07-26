% clc;
% clear;

test_ = load('testing.mat');
test = test_.T.';


% train = load('manatee_1-10.mat');
% x1 = train.manatee{1};
% x2 = train.manatee{2};
% x3 = train.manatee{3};
% x4 = train.manatee{4};
% x5 = train.manatee{5};
% x6 = train.manatee{6};
% x7 = train.manatee{7};
% x8 = train.manatee{8};
% x9 = train.manatee{9};
% x10 = train.manatee{10};

[x_,fs] = audioread('train_signal.wav');

noise = load('noise_train.mat');
n = noise.N.';

%%
p1 = mle(x_);
p2 = mle(n);


% %% statistic
% [p1] = mle(x1);
% [p2] = mle(x2);
% [p3] = mle(x3);
% [p4] = mle(x4);
% [p5] = mle(x5);
% [p6] = mle(x6);
% [p7] = mle(x7);
% [p8] = mle(x8);
% [p9] = mle(x9);
% [p10] = mle(x10);
% [p11] = mle(n);

% length of segment, should be calculated from local stationary
segment = 3e4;
slide = 3000;
class = zeros((length(test)-segment)/slide,segment);

test_matrix = zeros((length(test)-segment)/slide,segment);
for i = 1:(length(test)-segment)/slide
    test_matrix(i,:) = test(1+slide*(i-1):slide*(i-1)+segment);
end

%% SPRT
thr = 0.01;
for count = 1:(length(test)-segment)/slide
   [para] = mle(test_matrix(count,:));
   for num = 1:segment
       [y] = Gaussian(test_matrix(count,num),para(1),para(2));
       [y1] = Gaussian(test_matrix(count,num),p1(1),p1(2));
       [y2] = Gaussian(test_matrix(count,num),p2(1),p2(2));
       class(count,num) = abs(log(y1/y))+abs(log(y2/y));
   end
end

sq = class;


for row = 1:(length(test)-segment)/slide
   for column = 1:segment
      if class(row,column)>thr
          sq(row,column) = 0;
      elseif class(row,column)<thr
          sq(row,column) = 1;
      end
   end
end

out_ = sq(:,1:slide);
out = out_(:);



time = 1/fs:1/fs:(length(test)-segment)/fs;
plot(time,out);
% set(gca,'Xtick',(0:1:30));

%% cusum:
saving = zeros(2,segment);
saving_ = zeros(2,segment);
thr = 0.01;
L = 20000;


for count = 1:(length(test)-segment)/slide
   [para] = mle(test_matrix(count,:));
   for num = 1:segment
       [y] = Gaussian(test_matrix(count,num),para(1),para(2));
       [y1] = Gaussian(test_matrix(count,num),p1(1),p1(2));
       [y2] = Gaussian(test_matrix(count,num),p2(1),p2(2));
       saving(1,num) = abs(log(y1/y));
       saving(2,num) = abs(log(y2/y));
%        class(count,num) = abs(log(y1/y))+abs(log(y2/y));
   end
   
   saving_(1:L) = saving(1:L);
   saving_(2:L) = saving(2:L);
   
   for j = L+1:segment
       saving_(1,j) = saving(1,j)-min(saving(1,j-L+1:j-1));
       saving_(2,j) = saving(2,j)-min(saving(2,j-L+1:j-1));
   end
   
   for k = 1:segment
       class(count,k) = sum(saving_(:,k));
   end
   
end

sq = class;


for row = 1:(length(test)-segment)/slide
   for column = 1:segment
      if class(row,column)>thr
          sq(row,column) = 0;
      elseif class(row,column)<thr
          sq(row,column) = 1;
      end
   end
end


out_ = sq(:,1:slide);
out = out_(:);


time = 1/fs:1/fs:(length(test)-segment)/fs;
plot(time,out);
% set(gca,'Xtick',(0:1:30));




