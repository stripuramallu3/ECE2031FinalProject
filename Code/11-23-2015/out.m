function  out(in)

y = nnpath2([in]);

y = y';

for i = 1:length(in)+2
   A(i,1) = round(25.4*12*y(i)/1.05); 
end
for i = 3:length(A)
    fprintf('DW %d \n', A(i));
end

end

