function A = NNpath1(v)
% Constructs the sequence that yields the NNpath;
% optimization level 1; i.e, Ryan's suggestion.
% v is the vector of coordinates. E.g, 
% v = [x1, y1, x2, y2].
w = v;
L = length(v)/2;
for k= 1:L
    v=w;
    init = v(2*k-1:2*k);
    v(2*k-1:2*k) = [inf,inf]; 
   for j= 1:L-1
    for i = 1:L
        u(i) = d(init(2*j-1:2*j),v(2*i-1:2*i));
    end    
        for i = 1:L
            if d(init(2*j-1:2*j),v(2*i-1:2*i)) == min(u)
                init(2*(j+1)-1:2*(j+1)) = v(2*i-1:2*i);
                v(2*i-1:2*i) = [inf,inf];
                break
            end
        end
    end
 for i=1:L
    A(i,2*k-1:2*k) = init(2*i-1:2*i);
 end
end
for i=1:L
for j = 1:L-1
    k(j) = d(A(j,2*i-1:2*i),A(j+1,2*i-1:2*i));
end
u(i) = sum(k)+d([0,0],A(1,2*i-1:2*i));
end
for i=1:L
    if u(i) == min(u)
      A = A(1:L,2*i-1:2*i);
      break
    end
end
end
