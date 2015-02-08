%Weight matrix
W = (R==0);
W =~ W;

k = [10, 50, 100];
errArrSimpleW = wnmfModelAndError(R,W,k);