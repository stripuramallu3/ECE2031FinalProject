function C = nnpathr( v )
% v = [x1,y1,x2,y2], where the starting location is
% assumed to be the origin. This does NOT mean
% that [x1,y1] = [0,0] is required.
L = length(v)/2;

for i = 1:L
   A(i,1) = v(2*i-1);
   A(i,2) = v(2*i);
end

B = [0,0;A];

index = tsp_dp1(B);

for i = 2:L+1
   k = index(i)-1;
   C(i-1,1:2) = A(k,1:2);
end


end

