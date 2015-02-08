% In this case, our weight matrix is now using ratings.
% Our R matrix will now use 0-1.  1 For where rating exists and 0 where it
% does not.  Simply switch the weight and rating matrix from previous
% problem.

%Weight matrix
W = (R==0);
W =~ W;
%Switch weight and r matrix
newR = W;
newW = R;

k = [10, 50, 100];
errArrRatingW = wnmfModelAndError(newR,newW,k);