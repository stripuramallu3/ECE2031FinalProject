function dem( v )
% Finalized MATLAB file used for demonstration day.
% E.g. v = [x1,y1,x2,y2]; the coordinates that 
% will be given.
A = nnpath2([0,0,v]);
xpos = A(1:length(v)/2, 1);
ypos = A(1:length(v)/2, 2);
generateCode(xpos,ypos)


end

