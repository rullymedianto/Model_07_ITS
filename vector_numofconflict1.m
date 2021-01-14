function [noc1 noc2 noc3 noc4 noc5 noc6 noc7 noc8] = vector_numofconflict1(sim1)


AB = sim1(1,:);
AD = sim1(9,:);
AC = sim1(4,:);
AE = sim1(26,:);
AF = sim1(27,:);
 
%AF = AA > 1 & AB == 0 & AC>lim_low & AC<lim_up ;

 AA1 = AB>1 & AD == 0 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 2 | AF == 3 | AF == 1 | AF == 12) ; % Lower North (LN)
 AA2 = AB>1 & AD == 0 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 4 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Lower Centre (LC)
 AA3 = AB>1 & AD == 0 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 1 | AF == 9 | AF == 10 | AF == 15); % Lower East (LE)
 AA4 = AB>1 & AD == 0 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 11 | AF == 12) ; % Terminal West (TW)
 AA5 = AB>1 & AD == 0 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 1 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Terminal East (TE)
 AA6 = AB>1 & AD == 0 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 9 | AF == 10 | AF == 15); % Terminal South (TS)
 AA7 = AB>1 & AD == 0 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 1 | AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 7 | AF == 11 | AF == 12 | AF == 13); % Arrival North (AN)
 AA8 = AB>1 & AD == 0 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 7 | AF == 8 | AF == 9 | AF == 10 | AF == 13 | AF == 14 | AF == 15); % Arrival East (AE)

% AF = find(AD == 0);
 
%desc= AF;
noc1 = sum(AA1>0);
noc2 = sum(AA2>0);
noc3 = sum(AA3>0);
noc4 = sum(AA4>0);
noc5 = sum(AA5>0);
noc6 = sum(AA6>0);
noc7 = sum(AA7>0);
noc8 = sum(AA8>0);
