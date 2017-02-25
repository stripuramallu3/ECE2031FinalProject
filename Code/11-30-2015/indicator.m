function A = indicator( v )
% The input here is the same as the input to
% the position function. This function outputs
% the coordinates (in feet) that were logged. 
for i = 1:length(v)
   [m,n] = size(char(v(i,:)));
   if n == 10
       k(i,1:10) = char(v(i,:));
   else
       k(i,1:10) = '..........';
   end
end
[m,n] = size(k);
j=[];
for i = 1:m
   if k(i,:) ~= '..........'
       j = [j,i];
   end
end

for i = 1:length(j)
    p(i,1:10) = k(j(i),:);
end

A = position(p);

end

