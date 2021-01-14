function [ta] = aircraft_type()

AA = 0.2; % 1 == B738
AB = 0.2; % 2 == B739
AC = 0.5;% 3 == A320
AD = 0.05;% 4 == A330
AE = 0.05;% 5 == B777

AAB = AA+AB;
BB = (AAB-AA)/AAB;

if BB <= rand()
    medium1 = 1; 
else 
    medium1 = 2;
end

AAC = AAB + AC;
CC = (AAC-AAB)/AAC;

if CC <= rand()
    medium2 = medium1; 
else 
    medium2 = 3;
end

AAD = AD + AE;
DD = (AAD-AD)/AAD;

if DD <= rand()
    heavy = 4; 
else 
   heavy = 5;
end


AAE = AAB+AC+AAD;
EE = (AAE-(AAB+AC))/AAE;
if EE <= rand()
    select = medium2 ; 
else 
    select = heavy;
end

ta=select;


