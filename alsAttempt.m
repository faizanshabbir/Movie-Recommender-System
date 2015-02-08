%Weight matrix
W = (R==0);
W =~ W;

k = [10, 50, 100];
lam = [0.01, 0.1, 1];
errMatSimpleW_als = wnmfModelAndError_als(R,W,k,lam);

%Weight matrix  -- Use ratings as weights now
W = (R==0);
W =~ W;
%Switch weight and r matrix
newR = W;
newW = R;

errMatRatingW_als = wnmfModelAndError_als(newR,newW,k,lam);