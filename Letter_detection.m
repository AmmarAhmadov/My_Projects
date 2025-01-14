function letter=readLetter(snap)

load NewTemplates 
snap=imresize(snap,[42 24]); 
one = 24*ones(1,36);
NewTemplates = mat2cell(NewTemplates,42,one);
rec=[ ];
for n=1:length(NewTemplates)
    cor=corr2(NewTemplates{1,n},snap); 
    rec=[rec cor]; 
end
ind=find(rec==max(rec));
display(ind);

% Alphabets listings.
if ind==1 
    letter='A';
elseif ind==2
    letter='B';
elseif ind==3
    letter='C';
elseif ind==4
    letter='D';
elseif ind==5
    letter='E';
elseif ind==6
    letter='F';
elseif ind==7
    letter='G';
elseif ind==8
    letter='H';
elseif ind==9
    letter='I';
elseif ind==10
    letter='J';
elseif ind==11
    letter='K';
elseif ind==12
    letter='L';
elseif ind==13
    letter='M';
elseif ind==14
    letter='N';
elseif ind==15
    letter='O';
elseif ind==16
    letter='P';
elseif ind==17
    letter='Q';
elseif ind==18
    letter='R';
elseif ind==19
    letter='S';
elseif ind==20
    letter='T';
elseif ind==21
    letter='U';
elseif ind==22
    letter='V';
elseif ind==23
    letter='W';
elseif ind==24
    letter='X';
elseif ind==25
    letter='Y';
elseif ind==26
    letter='Z';
    %*-*-*-*-*
% Numerals listings.
elseif ind==27
    letter='1';
elseif ind==28
    letter='2';
elseif ind==29
    letter='3';
elseif ind==30
    letter='4';
elseif ind==31
    letter='5';
elseif ind==32
    letter='6';
elseif ind==33
    letter='7';
elseif ind==34
    letter='8';
elseif ind==35
    letter='9';
else 
      letter='0';
end
end