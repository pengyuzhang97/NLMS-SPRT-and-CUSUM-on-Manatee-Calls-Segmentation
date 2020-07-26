
function [pro] = Gaussian(input,mu,sigma)
pro = (sqrt(2*pi)*sigma).^(-1) * exp(-(input-mu).^2/(2*sigma*sigma));
end