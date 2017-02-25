function A = nnpath(v)
% e.g., v = [0,0,x1,y1,x2,y2]. The first pair 
% of coordinates should be starting point,
% which in our case is the origin.
L = length(v)/2;
init = v(1:2);
for j= 1:L-1
    for i = 1:L-1
    u(i) = d(init(2*j-1:2*j),v(2*(i+1)-1:2*(i+1)));
    end    
for i = 1:L-1
    if d(init(2*j-1:2*j),v(2*(i+1)-1:2*(i+1))) == min(u)
    init(2*(j+1)-1:2*(j+1)) = v(2*(i+1)-1:2*(i+1));
    v(2*(i+1)-1:2*(i+1)) = [inf,inf];
    break
    end
end
end

for i = 1:L
 A(i,1:2) = init(2*i-1:2*i); 
end

end

