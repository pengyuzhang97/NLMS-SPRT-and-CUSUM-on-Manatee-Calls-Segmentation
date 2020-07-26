function [y,E_nlms,W_nlms] = NLMS_MSE(m,n,mu_nlms,a)
%%
%**********************************
% NLMS + MSE
%**********************************
% m = 15;
l = length(n);
d = n;
%**************************************
    E_nlms = zeros(1,length(d));
    W_nlms(:,l) = zeros(m,1);
%     mu_nlms = 0.026;

    x = zeros(1,m-1+l);
    x(m:m-1+l) = n;
    X = single(zeros(m,l));
    
    for i = 1:l
        X(:,i) = x(i:i+m-1);
    end
    y = zeros(1,l+1);

    for i = 1:l-1
        y(i+1) = W_nlms(:,i).'*X(:,i);
        E_nlms(i) = d(i) - y(i+1);
        W_nlms(:,i+1) = W_nlms(:,i)+mu_nlms./(a+sum(X(:,i).^2)).*E_nlms(i).*X(:,i);    
    end

%     ERLE = zeros(1,length(d));
%     for k = 1:length(d)
%         ERLE(k) = 10.*log(mean(d(1:k).^2)/mean(E_nlms(1:k).^2));                                 
%     end