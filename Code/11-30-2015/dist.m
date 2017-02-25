function [ y ] = dist( v )
% Given a vector v = [x1,y1;x2,y2;x3,y3] (the 
% length may vary), dist computes the total distance
% from the origin to the last coordinate of
% v, assuming the path taken is the straight line
% path. Remember, this has to be in matrix format.
v = [0,0;v];
[m,n] = size(v);
for i = 1:m-1
   k(i) = d(v(i,1:2),v(i+1,1:2)); 
end
y = sum(k);

end

