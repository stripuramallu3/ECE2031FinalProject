function y = conv( v )
% Conversion function. Change it as necessary.
% The Current Action: Takes xpos or ypos, and 
% converts it into feet.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2s comp. code 
% for 16 bit. Ignore this section please.
x = hexToBinaryVector(v);
if length(x) < 16
    for j = length(x)+1:16
        x(j) = 0;
    end
end
z = 0;
for i = 1:15
    z = x(i)*2^(i-1) + z;
end
z = z - (2^(15)*x(16));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

y = (hex2dec(v)*1.05/25.4)/12;
y = round((y*1000))/1000; % # of zeroes = 
% # of decimal places.
end

