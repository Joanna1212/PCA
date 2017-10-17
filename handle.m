x = importdata('1.txt');
Y=[];
for i=1:150
    if strcmp(x(i),'Iris-setosa')
        Y(i,:) = 1;
    else
        Y(i,:) = 0;
    end
end
C=int8(Y)
csvwrite('C:\Users\MIRJYL\Desktop\Y.csv',C);
        