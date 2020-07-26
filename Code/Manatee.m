
[M,Fs_m] = audioread('train_signal.wav');

M_extend = zeros(1,length(M)+4);
M_extend(1:length(M)) = M;

M_arr = zeros(10,length(M_extend)/10);

for i = 1:10
    M_arr(i,:) = M_extend(1+(i-1)*length(M_extend)/10:(i-1)*length(M_extend)/10+length(M_extend)/10);
end

manatee = cell(1,10);
for j = 1:10
    M_test = M_arr(j,:);
    ind = find(abs(M_test)<3.1e-5);
    M_test(ind) = [];
    manatee{j} = M_test ;
    
end

save('manatee_1-10.mat', 'manatee','Fs_m');
