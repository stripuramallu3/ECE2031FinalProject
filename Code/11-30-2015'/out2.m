function  out2(in)
% Outputs the appropriate ASM format
% to be copy and pasted into the table within the ASM
% file. The input should be a vector containing
% your coordinates. For example: in = [x1,y1,x2,y2]
% There is no need to append the origin to
% the input vector.
z = order2(in);
y = z(1:end,1:2);
y = y';
L = length(in)/2;

for i = 1:L
    k(i) = z(i,3);
end

for i = 1:2*L
   A(i) = round(25.4*12*y(i)/1.05); 
end

for i = 1:L
   B(3*i-2) = A(2*i-1);
   B(3*i-1) = A(2*i);
   B(3*i) = k(i);
end

B(3*L+1:3*L+3) = B(3*L-2:3*L);
%fprintf('Table:\n') 
for i = 1:length(B)
    fprintf('DW %d \n', B(i));
end

end


