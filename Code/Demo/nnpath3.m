function [A,y] = nnpath3( v )
% Decreases point near the boundary.

for i = 1:length(v)/2
    C(i,1) = v(2*i-1);
    C(i,2) = v(2*i);
end

for i = 1:length(v)/2
    if C(i,1) == 4
        C(i,1) = 3.8;
    end
    if C(i,1) == -4
        C(i,1) = -3.8;
    end
     if C(i,2) == 5
        C(i,2) = 4.8;
    end
    if C(i,2) == -5
        C(i,2) = -4.8;
    end
end
    D = C';
    
    y = D(:);
    y = y';
    
A = nnpath2(y);
end

