function [clim1 clim2 clim3 clim4 clim5 clim6 clim7 clim8] = vector_climb1(sim1)
% global lim_low lim_up


AB = sim1(1,:);
AC = sim1(4,:);
AD = sim1(20,:);
AE = sim1(26,:);
AF = sim1(27,:);


 AA1 = AB>1 & AD == 1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 2 | AF == 3 | AF == 1 | AF == 12) ; % Lower North (LN)
 AA2 = AB>1 & AD == 1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 4 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Lower Centre (LC)
 AA3 = AB>1 & AD == 1 & AC > meter(15000) & AC < meter(24500) & AE > nm(75) & AE < nm(150) & (AF == 1 | AF == 9 | AF == 10 | AF == 15); % Lower East (LE)
 AA4 = AB>1 & AD == 1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 11 | AF == 12) ; % Terminal West (TW)
 AA5 = AB>1 & AD == 1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 1 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Terminal East (TE)
 AA6 = AB>1 & AD == 1 & AC > meter(6000) & AC < meter(15000) & AE > nm(30) & AE < nm(75) & (AF == 9 | AF == 10 | AF == 15); % Terminal South (TS)
 AA7 = AB>1 & AD == 1 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 1 | AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 7 | AF == 11 | AF == 12 | AF == 13); % Arrival North (AN)
 AA8 = AB>1 & AD == 1 & AC > meter(2500) & AC < meter(6000) & AE > nm(12) & AE < nm(30) & (AF == 7 | AF == 8 | AF == 9 | AF == 10 | AF == 13 | AF == 14 | AF == 15); % Arrival East (AE)

% AF = find(AD == 0);
 
%desc= AF;
clim1 = sum(AA1>0);
clim2 = sum(AA2>0);
clim3 = sum(AA3>0);
clim4 = sum(AA4>0);
clim5 = sum(AA5>0);
clim6 = sum(AA6>0);
clim7 = sum(AA7>0);
clim8 = sum(AA8>0);