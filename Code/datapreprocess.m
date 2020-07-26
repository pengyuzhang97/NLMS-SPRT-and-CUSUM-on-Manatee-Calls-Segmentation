function [X] = datapreprocess(m,n)
    l = length(n);
    x = zeros(1,m-1+l);
    x(m:m-1+l) = n;
    X = single(zeros(m,l));
    
    for i = 1:l
        X(:,i) = x(i:i+m-1);
    end