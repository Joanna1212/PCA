function [lowData,reconMat] = PCA(data, K);
[row,col] = size(data);
meanValue = mean(data);
normData = data - repmat(meanValue,[row,1]);
covMat = cov(normData);
[eigVect,eigVal] = eig(covMat); %Find eigenvalues and eigenvectors
[sortMat,sortIX] = sort(eigVal,'descend');
[B,IX] = sort(sortMat(1,:),'descend')
len = min(2,length(IX));
eigVect_New = eigVect(:,IX(1:1:len));
lowData = data * eigVect_New;
%lowData = normData* eigVect_New;
reconMat = (lowData * eigVect_New') + repmat(meanValue,[row,1]);
 end
