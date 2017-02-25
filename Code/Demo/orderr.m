function w = orderr( v )
% Given an indexed vector or coordinates, this 
% function produces the coordinates with a number
% attached, where the attached number indicates
% the position the coordinates are in within the
% raw input.
w = nnpathr(v);
for i = 1:length(v)/2
    for j = 1:length(v)/2
        if isequal(v(2*i-1:2*i),w(j, 1:2))
            w(j, 3) = i;
            break
        end
    end
end

end


