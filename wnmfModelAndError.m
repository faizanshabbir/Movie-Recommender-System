function [errArrProb, U, V] = runModelAndError(R,W,k)

errArrProb = zeros(1,length(k));
for i = 1:length(k)
    [U,V] = wnmfrule(R,W,k(i));
    
    %calculate error
    err = sum(sum(W.*(R-(U*V)).^2));
    errArrProb(i) = err;
end

end