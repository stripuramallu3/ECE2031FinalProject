function generateCode(xPos, yPos)
fh = fopen('outputCode.txt','w'); 
cellArr = {'OneFoot','TwoFeet','ThreeFeet','FourFeet','FiveFeet','SixFeet','SevenFeet','EightFeet','NineFeet','TenFeet', '0'}
%create text file
%for loop to length of xPos
%load x
%make neg for negative values
%store x
%load y
%make neg for negative values
%store y
%call goto
for i = 1:2:length(xPos)
    val = xPos(i); 
    if val < 0
        val = abs(val); 
        scompVal = cellArr{val}; 
        fprintf(fh, 'LOAD %s/n',scompVal); 
        fprintf(fh, 'MakeNeg %s/n', scompVal); 
    elseif val == 0
        scompVal = cellArr{end}; 
        fprintf(fh, 'LOADI %s/n',scompVal); 
    else 
        scompVal = cellArr{i}; 
        fprintf(fh, 'LOAD %s/n',scompVal);        
    end 
    fprintf(fh,'STORE X/n'); 
    val = yPos(i); 
    if val < 0
        val = abs(val); 
        scompVal = cellArr{val}; 
        fprintf(fh, 'LOAD %s/n', scompVal); 
        fprintf(fh, 'MakeNeg %s/n', scompVal); 
    elseif val == 0
        scompVal = cellArr{end}; 
        fprintf(fh,'LOADI %s/n',scompVal); 
    else 
        scompVal = cellArr{i}; 
        fprintf(fh, 'LOAD %s/n', scompVal); 
    end 
    fprintf(fh,'STORE Y'); 
    fprintf(fh,'CALL Goto'); 
end 
fclose(fh); 
end 