delimiterIn='\t';
A = importdata('data\ml-100k\u.data',delimiterIn);

%Convert raw data A to matrix R that has user on row, and movie rating on
%columns
%The columns in A are the following:
%1: User Id, 2: Movie Id, 3: Rating, 4: Timestamp
numUsers = max(A(:,1));
numMovies = max(A(:,2));
R = zeros(numUsers,numMovies);

for i = 1:numUsers
    idxUser = find(A(:,1) == i);
    userMat = A(idxUser,:);
    for j = 1:size(userMat,1)
        idxCol = userMat(j,2);
        R(i,idxCol) = userMat(j,3);
    end
end

