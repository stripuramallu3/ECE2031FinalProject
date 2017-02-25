function [ y ] = dist( v )
v = [0,0,v];
w = nnpath2(v);
for i = 1:length(v)/2-1
   k(i) = d(w(i,1:2),w(i+1,1:2)); 
end
y = sum(k);

end

