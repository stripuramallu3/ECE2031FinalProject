function y = position( v )
% How to use:

% Step 1: Copy the positions from website into
% a text file using copy and paste. Save text file
% in the directory this function is in.

% Step 2: Right click on saved text file in the
% directory and click "Import Data".

% Step 3: For column of values on left side, change
% from NUMBER to TEXT. In top middle of screen, 
% highlight "column vector". Press
% "Import Selection". New variable is now created.
% This is input to above function.

v = char(v);
[m,n] = size(v);

for i = 1:m
   y(i,1) = conv(v(i,1:4));
   y(i,2) = conv(v(i,5:8));
end

for i = 1:m
   if y(i,1) > 20
       y(i,1) = y(i,1) - conv('FFFF');
   end
   if y(i,2) > 20
       y(i,2) = y(i,2) - conv('FFFF');
   end
end
end

