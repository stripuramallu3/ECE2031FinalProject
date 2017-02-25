function C = er( v,testset )
% v = [x1,y1,x2,y2]
% testset = same as input for position function

A = nnpath2(v);
B = indicator(testset);

[m,n] = size(A);

A = 12*A;
B = 12*B;

for i = 1:m
    C(i,1) = ceil(2*d([A(i,1),A(i,2)],[B(i,1),B(i,2)]))/2;
end

C = round((C*10))/10; % # of zeroes denotes number
% of decimal places.



end

