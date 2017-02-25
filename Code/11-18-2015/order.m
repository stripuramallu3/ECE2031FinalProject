function [ w ] = order( v )
v = [0, 0, v];
w = nnpath2(v);
for i = 1:length(v)/2
    for j = 1:length(v)/2
        if isequal(v(2*i-1:2*i),w(j, 1:2))
            w(j, 3) = i;
            break
        end
    end
end
for i = 1:length(v)/2
   w(i,3) = w(i,3) - 1; 
end
w = w(2:length(v)/2,1:3);
end

