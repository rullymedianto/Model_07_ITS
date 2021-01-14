function [OC] = overtaking_conflict1(sim1,airplane)

load('Route.mat')


OTA_RWY07L = 0;
OTB_RWY07L = 0;
OTA_RWY07R = 0;
OTB_RWY07R = 0;

limA_low07L = meter(15001);
limA_up07L = meter(30000);

limB_low07L = meter(2000);
limB_up07L = meter(15000);

limA_low07R = meter(15001);
limA_up07R = meter(30000);

limB_low07R = meter(2000);
limB_up07R = meter(15000);

for i = 1:airplane

% Logic Overtaking 07L %
% Phase A
if sim1(1,i) > 1 &&  sim1(4,i) > limA_low07L && sim1(4,i)< limA_up07L && ... % limit up dan lower A
     Route{1,i}(sim1(17,i),1) == -29127.2000000000   %Untuk arrival 07L
OTA_RWY07L = OTA_RWY07L +1;
end

% Phase B
if sim1(1,i) > 1 &&  sim1(4,i) > limB_low07L && sim1(4,i)< limB_up07L && ... % limit up dan lower A
     Route{1,i}(sim1(17,i),1) == -29127.2000000000   %Untuk arrival 07L
OTB_RWY07L = OTB_RWY07L +1;
end


% Logic Overtaking 07R
%Phase A
if sim1(1,i) > 1 &&  sim1(4,i) > limA_low07R && sim1(4,i)< limA_up07R && ...
      Route{1,i}(sim1(17,i),1) == -28591.3000000000 
OTA_RWY07R = OTA_RWY07R +1;
end

if sim1(1,i) > 1 &&  sim1(4,i) > limA_low07R && sim1(4,i)< limA_up07R && ...
      Route{1,i}(sim1(17,i),1) == -28591.3000000000 
OTB_RWY07R = OTB_RWY07R +1;
end
end
%Overtaking 07L
if OTA_RWY07L > 1
    OTA_RWY07L = OTA_RWY07L;
else
    OTA_RWY07L = 0;
end

if OTB_RWY07L > 1
    OTB_RWY07L = OTB_RWY07L;
else
    OTB_RWY07L = 0;
end

%Overtaking 07R
if OTA_RWY07R > 1
    OTA_RWY07R = OTA_RWY07R;
else
    OTA_RWY07R = 0;
end

if OTB_RWY07R > 1
    OTB_RWY07R = OTB_RWY07R;
else
    OTB_RWY07R = 0;
end



OC = OTA_RWY07L + OTB_RWY07L + OTA_RWY07R + OTB_RWY07R ; %Total Crossing Conflict