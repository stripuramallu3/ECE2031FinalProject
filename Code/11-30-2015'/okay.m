function C = okay( A,B )

[m,n] = size(A);

for i = 1:m
  k(i) = A(i,1)-B(i,1);
  j(i) = A(i,2)-B(i,2);
end

for i = 1:m
    C(i,1) = ceil(2*d([A(i,1),A(i,2)],[B(i,1),B(i,2)]))/2;
end



end

