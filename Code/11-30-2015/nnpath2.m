function A = nnpath2( v )
% Input = [x1,y1,x2,y2]. This function assumes
% that [0,0] is the starting point, so there's
% no need to append [0,0] to the input vector v.

% Optimization level 2. Three or more coords 
% required.
v = [0,0,v];
L = length(v)/2;
w = v(3:length(v));
x = w;
for i=1:L-1
    w = x;
    w(2*i-1:2*i) = [];
    y = nnpath1([x(2*i-1:2*i),w]);
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
       C = B(1:L,2*i-1:2*i);
       break
   end
end
A = C(2:L,1:2);
end

