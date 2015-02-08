function [errArr, U, V] = wnmfModelAndError(R,W,k)

errArr = zeros(1,length(k));
for i = 1:length(k)
    [U,V] = wnmfrule(R,W,k(i));
    
    %calculate error
    err = sum(sum(W.*(R-(U*V)).^2));
    errArr(i) = err;
end

end