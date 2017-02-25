function [newx, newy] = sortcoord(x,y)
l = length(x);
index = 1:l;
n = 1;
d = 1:l;
center = [0 0]; 
while ~isempty(x)
    for k = 1:l
        d(k) = sqrt((center(1)-x(k))^2+(center(2)-y(k))^2);
    end 
closest = min(d);
position = index(d==closest);
pos = position(1);
newx(n) = x(pos);
newy(n) = y(pos);
center = [x(pos) y(pos)];
n = n+1;
x(pos) = [];
y(pos) = [];
d(pos) = [];
l = length(x);
end

for i = 1:12
    %fprintf('X%d: DW %d \n', i, newx(i))
    %fprintf('Y%d: DW %d \n', i, newy(i))
end
end
    