function comp(v, testset)
% Creates the comparison plot of the bot movement.
% theor = the output vector (in matrix format)
% actual = the list of coordinates obtained
% from the website.
% E.g.: theor = nnpath2(v), actual = position(log).
% v = [x1,y1,x2,y2]
% testset = the input, as for the position function.
theor = nnpath2(v);
actual = position(testset);
figure
[m,n] = size(theor);
[x,y] = size(actual);
plot([0;theor(1:m,1)],[0;theor(1:m,2)],'*-')
title('Test Case')
hold on
plot(actual(1:x,1),actual(1:x,2))
hold off

end

