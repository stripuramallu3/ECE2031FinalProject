function C = er2( v,testset )
% v = [x1,y1,x2,y2]
% testset = same as input for position function

prelim = nnpath3(v);

for i = 1:length(v)/2
   if prelim(i,1) == 3.8
       theor(i,1) = 4;
   elseif prelim(i,1) == -3.8
       theor(i,1) = -4;
   else
       theor(i,1) = prelim(i,1);
   end
   if prelim(i,2) == -4.8
       theor(i,2) = -5;
   elseif prelim(i,2) == 4.8
       theor(i,2) = 5;
   else
       theor(i,2) = prelim(i,2);   
   end  
end
A = theor;
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