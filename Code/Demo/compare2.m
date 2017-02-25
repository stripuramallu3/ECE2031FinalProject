function compare2(v, testset)
% Creates the comparison plot of the bot movement.
% theor = the output vector (in matrix format)
% actual = the list of coordinates obtained
% from the website.
% E.g.: theor = nnpath2(v), actual = position(log).
% v = [x1,y1,x2,y2]
% testset = the input, as for the position function.
prelim = nnpath3(v);

for i = 1:length(v)/2
   if prelim(i,1) == 3.8
       theor(i,1) = 4;
   elseif prelim(i,1) == -3.8
       theor(i,1) = -4;
   else
       theor(i,1) = prelim(i,1);
   end
   if prelim(i,2) == -4.8
       theor(i,2) = -5;
   elseif prelim(i,2) == 4.8
       theor(i,2) = 5;
   else
       theor(i,2) = prelim(i,2);   
   end  
end
actual = position(testset);
indic = indicator(testset);
figure
[m,n] = size(theor);
[x,y] = size(actual);
plot([0;theor(1:m,1)],[0;theor(1:m,2)],'*-')
title('Test Case')
hold on
plot(actual(1:x,1),actual(1:x,2))
hold on
plot([actual(1,1);indic(:,1)],[actual(1,2);indic(:,2)],'*r')
legend('Ideal','Actual','Logged Positions')
hold off

end