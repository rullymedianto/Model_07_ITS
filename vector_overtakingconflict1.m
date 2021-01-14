function [ot1 ot2 ot3 ot4 ot5 ot6 ot7 ot8] = vector_overtakingconflict1(sim1)


AB = sim1(1,:);
AC = sim1(4,:);
AE = sim1(26,:);
AF = sim1(27,:);


% overtake =[0 1 3 6 9 14 21 30 42];
overtake =[0 1 3 6 9 12 15 18 21 24 27 30 33 36 39 42 45 49 54 55 59 60 65 69 75 82 95 102 114 120 126 132 140];
% Logic Overtaking 07L Landing

 AA1a = AB>1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & AF == 2 ; % Lower North (LN)Dorce
 AA1b = AB>1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & AF == 3  ; % Lower North (LN)BUNIK
 AA2 = AB>1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & AF == 4; % Lower Centre (LC)
 AA3 = AB>1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & AF == 1 ; % Lower East (LE)
 AA4 = AB>1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 2 | AF == 3 | AF == 4)  ; % Terminal West (TW)
 AA5 = AB>1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & AF == 1 ; % Terminal East (TE)
%  AA6 = AB>1 & AD == 0 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 9 | AF == 10 | AF == 15); % Terminal South (TS)
 AA7 = AB>1 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 1 | AF == 2 | AF == 3 | AF == 4 ); % Arrival North (AN)
%  AA8 = AB>1 & AD == 0 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 7 | AF == 8 | AF == 9 | AF == 10 | AF == 13 | AF == 14 | AF == 15); % Arrival East (AE)


OTA_AA1a = sum(AA1a>0);
if OTA_AA1a == 0
    OTAA1a=0;
else 
    OTAA1a = overtake(1,OTA_AA1a);
end

OTA_AA1b = sum(AA1b>0);
if OTA_AA1b == 0
    OTAA1b=0;
else 
    OTAA1b = overtake(1,OTA_AA1B);
end


OTA_AA2 = sum(AA2>0);
if OTA_AA2 == 0
    OTAA2=0;
else 
    OTAA2 = overtake(1,OTA_AA2);
end

OTA_AA3 = sum(AA3>0);
if OTA_AA3 == 0
    OTAA3=0;
else 
    OTAA3 = overtake(1,OTA_AA3);
end

OTA_AA4 = sum(AA4>0);
if OTA_AA4 == 0
    OTAA4=0;
else 
    OTAA4 = overtake(1,OTA_AA4);
end

OTA_AA5 = sum(AA5>0);
if OTA_AA5 == 0
    OTAA5=0;
else 
    OTAA5 = overtake(1,OTA_AA5);
end

OTA_AA7 = sum(AA7>0);
if OTA_AA7 == 0
    OTAA7=0;
else 
    OTAA7 = overtake(1,OTA_AA7);
end

ot1 = OTAA1a + OTAA1b ;
ot2 = OTAA2;
ot3 = OTAA3;
ot4 = OTAA4;
ot5 = OTAA5;
ot6 = 0;
ot7 = OTAA7;
ot8 = 0;