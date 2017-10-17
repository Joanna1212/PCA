%可用于降维，只需要输入x，根据卷积之后，看特征值判断重要性。
clc
clear
close all

%Read the file
filename = 'testSet.txt';
data = load(filename);
%data = csvread('C:\\Users\MIRJYL\Desktop\X1_test.csv');

[lowData,reconMat] = PCA(data,K);

csvwrite('X.csv',lowData);
