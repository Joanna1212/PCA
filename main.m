%�����ڽ�ά��ֻ��Ҫ����x�����ݾ��֮�󣬿�����ֵ�ж���Ҫ�ԡ�
clc
clear
close all

%Read the file
filename = 'testSet.txt';
data = load(filename);
%data = csvread('C:\\Users\MIRJYL\Desktop\X1_test.csv');

[lowData,reconMat] = PCA(data,K);

csvwrite('X.csv',lowData);
