%�����ڽ�ά��ֻ��Ҫ����x�����ݾ��֮�󣬿�����ֵ�ж���Ҫ�ԡ�
clc
clear
close all

% filename = 'testSet.txt';
K = 10;
% data = load(filename);
data = csvread('C:\\Users\MIRJYL\Desktop\X1_test.csv');
[lowData,reconMat] = PCA(data,K);

% figure
% scatter(lowData(:,1),lowData(:,2),5,'r');
% % save('C:\\Users\MIRJYL\Desktop\X.csv',lowData);
csvwrite('C:\\Users\MIRJYL\Desktop\X.csv',lowData);
