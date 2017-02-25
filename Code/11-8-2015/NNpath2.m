function A = NNpath2(v,a)
% Optimization level 2. 
w = v;
L = length(v)/2;
for i = 1:L
    v=w;
    v(2*i-1:2*i) = [];
    A = NNpath(v,w(2*i-1:2*i));
    B(1:L,2*i-1:2*i)= [w(2*i-1:2*i);A];
end
A = B;

for i=1:L
for j = 1:L-1
   k(j) = d(A(j,2*i-1:2*i),A(j+1,2*i-1:2*i));
end
u(i) = sum(k)+d(a,A(1,2*i-1:2*i));
end

for i=1:L
    if u(i) == min(u)
      A = A(1:L,2*i-1:2*i);
      break
    end
end

end

