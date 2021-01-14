function [sr1 sr2 sr3 sr4 sr5 sr6 sr7 sr8] = vector_speedratio1(sim1)

AB = sim1(1,:);
AC = sim1(4,:);
AD = sim1(19,:);
AE = sim1(26,:);
AF = sim1(27,:);

%AF = AB>1 & AC>meter(500) & AC<meter(25000); 

 AA1 = AB>1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 2 | AF == 3 | AF == 1 | AF == 12) ; % Lower North (LN)
 AA2 = AB>1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 4 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Lower Centre (LC)
 AA3 = AB>1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 1 | AF == 9 | AF == 10 | AF == 15); % Lower East (LE)
 AA4 = AB>1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 11 | AF == 12);  % Terminal West (TW)
 AA5 = AB>1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 1 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Terminal East (TE)
 AA6 = AB>1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 9 | AF == 10 | AF == 15); % Terminal South (TS)
 AA7 = AB>1 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 1 | AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 7 | AF == 11 | AF == 12 | AF == 13); % Arrival North (AN)
 AA8 = AB>1 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 7 | AF == 8 | AF == 9 | AF == 10 | AF == 13 | AF == 14 | AF == 15); % Arrival East (AE)


AD1 = AD(AA1);
vmax1 = max(AD1);
vmin1 = min(AD1);
%as= AD(AD>80);

AD2 = AD(AA2);
vmax2 = max(AD2);
vmin2 = min(AD2);

AD3 = AD(AA3);
vmax3 = max(AD3);
vmin3 = min(AD3);

AD4 = AD(AA4);
vmax4 = max(AD4);
vmin4 = min(AD4);

AD5 = AD(AA5);
vmax5 = max(AD5);
vmin5 = min(AD5);

AD6 = AD(AA6);
vmax6 = max(AD6);
vmin6 = min(AD6);

AD7 = AD(AA7);
vmax7 = max(AD7);
vmin7 = min(AD7);

AD8 = AD(AA8);
vmax8 = max(AD8);
vmin8 = min(AD8);

if vmin1 < 50 | vmax1<50 | vmax1 == vmin1
     sr1 = 0;
 else
     sr1 = 10*(vmax1-vmin1)/vmin1;
 end


if vmin2 < 50 | vmax2<50 vmax2 == vmin2
    sr2 = 0;
else
   sr2 = 10*(vmax2-vmin2)/vmin2;
end
   
if vmin3 < 50 | vmax3<50 | vmax3 == vmin3
     sr3 = 0;
else
     sr3 = 10*(vmax3-vmin3)/vmin3;
end
   
if vmin4 < 50 | vmax4<50 | vmax4 == vmin4
     sr4 = 0;
else
     sr4 = 10*(vmax4-vmin4)/vmin4;
end


if vmin5 < 50 | vmax5<50 | vmax5 == vmin5
    sr5 = 0;
else
    sr5 = 10*(vmax5-vmin5)/vmin5;
end

 if vmin6 < 50 | vmax6<50 vmax6 == vmin6
    sr6 = 0;
else
    sr6 = 10*(vmax6-vmin6)/vmin6;
end
 
if vmin7 < 50 | vmax7<50 | vmax7 == vmin7
    sr7 = 0;
else
    sr7 = 10*(vmax7-vmin7)/vmin7;
end
 
if vmin8 < 50 | vmax8<50 | vmax8 == vmin8
    sr8 = 0;
else
    sr8 = 10*(vmax8-vmin8)/vmin8;
 end

% sr1 = sr1;
% sr2 = sr2;
% sr3 = sr3;
% sr4 = sr4;
% sr5 = sr5;
% sr6 = sr6;
% sr7 = sr7;
% sr8 = sr8;