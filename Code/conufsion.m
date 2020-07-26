True = [0 1 1 1 1 1 0 1 1 1 0 1 0 0 1 1 0 0 1 1 1 0 0 0 1 1 0 0 0 0 0];
pre = [0 0 0 1 0 1 1 1 1 1 0 1 1 0 1 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 ];


TP = 0;
FP = 0;
FN = 0;
TN = 0;

for i = 1:16
    if pre(i)==1 && True(i)==1
        TP = TP+1;
    elseif pre(i)==1 && True(i)==0
        FP = FP+1;
    elseif pre(i)==0 && True(i)==1
        FN = FN+1;
    elseif pre(i)==0 && True(i)==0
        TN = TN+1;   
    end
    
end

P = TP+FN;
N = FP+TN;

accuracy = (TP+TN)/(P+N);
