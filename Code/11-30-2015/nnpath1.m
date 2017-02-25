function A = nnpath1( v )
% Optimization level 1. The first pair of elements
% should be the starting point of the vector.
L = length(v)/2;
w = v(3:length(v));
x = w;
for i=1:L-1
    w = x;
    w(2*i-1:2*i) = [];
    y = nnpath([x(2*i-1:2*i),w]);
    B(1:L,2*i-1:2*i) = [v(1:2);y];
end

for i = 1:L-1
    for j=1:L-1
   z(j) = d(B(j,2*i-1:2*i),B(j+1,2*i-1:2*i));
    end
    u(i) = sum(z);
end

for i = 1:L-1
   if u(i) == min(u)
       A = B(1:L,2*i-1:2*i);
       break
   end
end


end

