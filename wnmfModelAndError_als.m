function [errMatProb, U, V] = runModelAndError_als(R,W,k,lam)

errMatProb = zeros(length(k),length(lam));
for j = 1:length(lam)
    for i = 1:length(k)
        [U,V] = wnmfrule_als(R,W,k(i),lam(j));
        
        %calculate error
        err = sum(sum(W.*((R-(U*V)).^2)))+lam(j)*(sum(sum(U.^2))+sum(sum(V.^2)));
        errMatProb(i,j) = err;
    end
end

end