
tic
%% Weighting factor for each parameter %%
w2 = 0.1129  ; % Weighting factor for aircraft type
w3 = 0.1430  ; % Weighting factor for speed ratio
w4 = 0.02288  ; % Weighting factor for number of cruising A/C 
w5 = 0.03287 ; % Weighting factor  for number of descending A/C
w6 = 0.05215  ; % Weighting factor for number of climbing A/C
w11 = 0.3973; % Weighting for RTF represented by potential conflict (overtaking and crossing)


[acs1 acs2 acs3 acs4 acs5 acs6 acs7 acs8] = cellfun(@vector_acinsector1,Sim1);
vector_acinsectorArray1 = [acs1' acs2' acs3' acs4' acs5' acs6' acs7' acs8'];
%vector_acinsectorArray1 = movmedian(vector_acinsectorArray1,5);
A1 = vector_acinsectorArray1;

%% Aircraft Type %%
[at1 at2 at3 at4 at5 at6 at7 at8] = cellfun(@vector_aircrafttype1,Sim1);
vector_aircrafttypeArray1 = [at1' at2' at3' at4' at5' at6' at7' at8'];
%vector_aircrafttypeArray1 = movmedian(vector_aircrafttypeArray1,5);
A2 = vector_aircrafttypeArray1;

%% Speed Ratio %%              
[sr1 sr2 sr3 sr4 sr5 sr6 sr7 sr8] = cellfun(@vector_speedratio1,Sim1);
vector_speedratioArray2 = [sr1' sr2' sr3' sr4' sr5' sr6' sr7' sr8'];
%vector_speedratioArray2 = movmedian(vector_speedratioArray2,5);
A3 = vector_speedratioArray2;

%% Aircraft Cruise %%
[cruis1 cruis2 cruis3 cruis4 cruis5 cruis6 cruis7 cruis8] = cellfun(@vector_cruise1,Sim1);
vector_cruiseArray1 = [cruis1' cruis2' cruis3' cruis4' cruis5' cruis6' cruis7' cruis8'];
%vector_cruiseArray1 = movmedian(vector_cruiseArray1,5);
A4 = vector_cruiseArray1;      

%% Aircraft Descent %%        
[tr1 tr2 tr3 tr4 tr5 tr6 tr7 tr8] = cellfun(@vector_descent1,Sim1);
vector_descentArray1 = [tr1' tr2' tr3' tr4' tr5' tr6' tr7' tr8'];
%vector_descentArray1 = movmedian(vector_descentArray1,5);
A5 = vector_descentArray1;

%% Aircraft Climb %%
[cl1 cl2 cl3 cl4 cl5 cl6 cl7 cl8]  = cellfun(@vector_climb1,Sim1);
vector_climbArray1 = [cl1' cl2' cl3' cl4' cl5' cl6' cl7' cl8'];
%vector_climbArray1 = movmedian(vector_climbArray1,5);
A6 = vector_climbArray1;

%% Number of Overtaking Conflict %%
[ot1 ot2 ot3 ot4 ot5 ot6 ot7 ot8] = cellfun(@vector_overtakingconflict1,Sim1);
vector_overtakingconflictArray1 = [ot1' ot2' ot3' ot4' ot5' ot6' ot7' ot8'];
%vector_overtakingconflictArray1 = movmedian(vector_overtakingconflictArray1,5);
A7 = vector_overtakingconflictArray1;

%% Number of Crossing Conflict %%
[noc1 noc2 noc3 noc4 noc5 noc6 noc7 noc8] = cellfun(@vector_crossingconflict1,Sim1);
vector_crossingconflictArray1 = [noc1' noc2' noc3' noc4' noc5' noc6' noc7' noc8'];
%vector_crossingconflictArray1 = movmedian(vector_crossingconflictArray1,5);
A8 = vector_crossingconflictArray1;

%% Number of Complexity Lower North (LN)%%
numofcomplexityArray1 = w2*A2(:,1) + w3*A3(:,1) + w4*A4(:,1) + w5*A5(:,1) + w6*A6(:,1) +(w11*(A7(:,1) + A8(:,1))/2);
CA1 = numofcomplexityArray1;
%CA1 = movmedian(numofcomplexityArray1,5);
plotnumofcomplexity1 = plot(CA1,'r');       

max_complexity1 = max(CA1);
% min_complexity1 = min(CA1);
average_complexity1 = mean(CA1);
max_aircraftinsector1 = max(A1(:,1));
mean_aircraftinsector1 = mean(A1(:,1));
% 
% Max_Complexity1 = max(CA1);
% Min_Complexity1 = min(CA1);
% 
% Complexity_param1 = [Max_Complexity1 Min_Complexity1];

%% Number of Complexity Lower Centre (LC)%%
numofcomplexityArray2 = w2*A2(:,2) + w3*A3(:,2) + w4*A4(:,2) + w5*A5(:,2) + w6*A6(:,2) +(w11*(A7(:,2) + A8(:,2))/2);
CA2 = numofcomplexityArray2;
%CA2 = movmedian(numofcomplexityArray2,5);
plotnumofcomplexity2 = plot(CA2,'r');       

max_complexity2 = max(CA2);
% min_complexity2 = min(CA2);
average_complexity2 = mean(CA2);
max_aircraftinsector2 = max(A1(:,2));
mean_aircraftinsector2 = mean(A1(:,2));
% 
% Max_Complexity2 = max(CA2);
% Min_Complexity2 = min(CA2);
% 
% Complexity_param2 = [Max_Complexity2 Min_Complexity2];

%% Number of Complexity Lower East (LE)%%
numofcomplexityArray3 = w2*A2(:,3) + w3*A3(:,3) + w4*A4(:,3) + w5*A5(:,3) + w6*A6(:,3) +(w11*(A7(:,3) + A8(:,3))/2);
CA3 = numofcomplexityArray3;
%CA3 = movmedian(numofcomplexityArray3,5);
plotnumofcomplexity3 = plot(CA3,'r');       

max_complexity3 = max(CA3);
% min_complexity3 = min(CA3);
average_complexity3 = mean(CA3);
max_aircraftinsector3 = max(A1(:,3));
mean_aircraftinsector3 = mean(A1(:,3));
% 
% Max_Complexity3 = max(CA3);
% Min_Complexity3 = min(CA3);
% 
% Complexity_param3 = [Max_Complexity3 Min_Complexity3];

%% Number of Complexity Terminal West (TW)%%
numofcomplexityArray4 = w2*A2(:,4) + w3*A3(:,4) + w4*A4(:,4) + w5*A5(:,4) + w6*A6(:,4) +(w11*(A7(:,4) + A8(:,4))/2);

CA4 = movmedian(numofcomplexityArray4,5);
plotnumofcomplexity4 = plot(CA4,'r');       

max_complexity4 = max(CA4);
min_complexity4 = min(CA4);
average_complexity4 = mean(CA4);
max_aircraftinsector4 = max(A1(:,1));
mean_aircraftinsector4 = mean(A1(:,1));
% 
% Max_Complexity4 = max(CA4);
% Min_Complexity4 = min(CA4);
% 
% Complexity_param4 = [Max_Complexity4 Min_Complexity4];

%% Number of Complexity Terminal East (TE)%%
numofcomplexityArray5 = w2*A2(:,5) + w3*A3(:,5) + w4*A4(:,5) + w5*A5(:,5) + w6*A6(:,5) +(w11*(A7(:,5) + A8(:,5))/2);

CA5 = movmedian(numofcomplexityArray5,5);
plotnumofcomplexity5 = plot(CA5,'r');       

max_complexity5 = max(CA5);
% min_complexity5 = min(CA5);
average_complexity5 = mean(CA5);
max_aircraftinsector5 = max(A1(:,5));
mean_aircraftinsector5 = mean(A1(:,5));
% 
% Max_Complexity5 = max(CA5);
% Min_Complexity5 = min(CA5);
% 
% Complexity_param5 = [Max_Complexity5 Min_Complexity5];

%% Number of Complexity % Terminal South (TS)%%
numofcomplexityArray6 = w2*A2(:,6) + w3*A3(:,6) + w4*A4(:,6) + w5*A5(:,6) + w6*A6(:,6) +(w11*(A7(:,6) + A8(:,1))/2);

CA6 = movmedian(numofcomplexityArray6,5);
plotnumofcomplexity6 = plot(CA6,'r');       

max_complexity6 = max(CA6);
% min_complexity6 = min(CA6);
average_complexity6 = mean(CA6);
max_aircraftinsector6 = max(A1(:,6));
mean_aircraftinsector6 = mean(A1(:,6));
% 
% Max_Complexity6 = max(CA6);
% Min_Complexity6 = min(CA6);
% 
% Complexity_param6 = [Max_Complexity6 Min_Complexity6];

%% Number of Complexity Arrival North (AN)%%
numofcomplexityArray7 = w2*A2(:,7) + w3*A3(:,7) + w4*A4(:,7) + w5*A5(:,7) + w6*A6(:,7) +(w11*(A7(:,7) + A8(:,7))/2);

CA7 = movmedian(numofcomplexityArray7,5);
plotnumofcomplexity7 = plot(CA7,'r');       

max_complexity7 = max(CA7);
% min_complexity7 = min(CA7);
average_complexity7 = mean(CA7);
max_aircraftinsector7 = max(A1(:,7));
mean_aircraftinsector7 = mean(A1(:,7));
% 
% Max_Complexity7 = max(CA7);
% Min_Complexity7 = min(CA7);
% 
% Complexity_param7 = [Max_Complexity7 Min_Complexity7];

%% Number of Complexity Arrival East (AE)%%
numofcomplexityArray8 = w2*A2(:,8) + w3*A3(:,8) + w4*A4(:,8) + w5*A5(:,8) + w6*A6(:,8) +(w11*(A7(:,8) + A8(:,8))/2);

CA8 = movmedian(numofcomplexityArray8,5);
plotnumofcomplexity8 = plot(CA8,'r');       

max_complexity8 = max(CA8);
% min_complexity8 = min(CA8);
average_complexity8 = mean(CA8);
max_aircraftinsector8 = max(A1(:,8));
mean_aircraftinsector8 = mean(A1(:,8));
% 
% Max_Complexity8 = max(CA8);
% Min_Complexity8 = min(CA8);
% 
% Complexity_param8 = [Max_Complexity8 Min_Complexity8];

CATOT = [CA1 CA2 CA3 CA4 CA5 CA6 CA7 CA8];

%legend('12NM','15NM')
plot(CA1,'r')       
 xlim([0 t])
 ylim([0 10])
 xlabel('time')
 ylabel('Complexity')
 title("Air Traffic Complexity")  


hold on
plot(CA2,'b')
plot(CA3,'g')
plot(CA4,'c')
plot(CA5,'y')
plot(CA6,'r')
plot(CA7,'r')
plot(CA8,'r')

hold off
timeElapsed_Vector_Complexity = toc;

%saveas (plotnumofcomplexity2,'Air_Traffic_Complexity.jpg');         
save('ITS_12-50-0000100.mat', 'CATOT') 
