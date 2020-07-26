test_ = load('testing.mat');
test = test_.T.';

plot(xcorr(test));