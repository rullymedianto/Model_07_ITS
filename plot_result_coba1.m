
load('Result1.mat')
% load('sim.mat')
t=time; %Time sample
d=2;   %t+
yl=20; %limit y axis

% Weighting factor for each parameter %
w1 = 0.1; % Weighting for A/C in sector
w2 = 1 ; % Weighting factor for number of conflict
w3 = 0.5  ; % Weighting factor for number of climbing A/C 
w4 = 0.5 ; % Weighting factor  for number of descending A/C
w5 = 0.2  ; % Weighting factor for number of cruising A/C 
w6 = 0.05  ; % Weighting factor for speed ratio
w7 = 0.2 ; %Weighting factor vfor use the same runway
w8 = 0.5 ; %Weighting factor for potential overtaking conflicts
w9 = 0.5 ; %Weighting factor for potential crossing conflicts

for i = 1:t
subplot(5,2,1)
        
        acinsectorArray1{1,1}(1,1) = 0;
        acinsectorArray1{1,1}(1,i+1) = acinsector1(Sim1{1,i},airplane);
        plotacinsector = plot([1:i],acinsectorArray1{1,1}(1,[1:i]),'r');
        xlim([0 t])
        ylim([0 yl])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft in Sector")
        
        
subplot(5,2,2)   
        numofconflictArray1{1,1}(1,1) = 0;
        numofconflictArray1{1,1}(1,i+1) = numofconflict1(Sim1{1,i},airplane);  
        plotnumofconflict = plot([1:i],numofconflictArray1{1,1}(1,[1:i]),'r');
        xlim([0 t])
        ylim([0 yl])
        xlabel('time')
        ylabel('Conflict')
        title("Number of Conflict")
        
% if i+d > t+1  
%     d=1;
% else
%     d=d;
% end

subplot(5,2,3)
     
        ac_climbArray1{1,1}(1,1) = 0;
        ac_climbArray1{1,1}(1,i+1) = ac_climb1(Sim1{1,i},airplane);
        plot([1:i],ac_climbArray1{1,1}(1,[1:i]),'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 yl])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Climbing")

subplot(5,2,4)
       
        ac_descentArray1{1,1}(1,1) = 0;
        ac_descentArray1{1,1}(1,i+1) = ac_descent1(Sim1{1,i},airplane);
        plot([1:i],ac_descentArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 yl])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Descending")
      
 subplot(5,2,5)
 ac_cruiseArray1{1,1}(1,1) = 0;
 ac_cruiseArray1{1,1}(1,i+1) = ac_cruise1(Sim1{1,i},airplane);
 plot([1:i],ac_cruiseArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 yl])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Cruising")
        
    subplot(5,2,6)
    speed_ratioArray1{1,1}(1,1) = 0;
    speed_ratioArray1{1,1}(1,i+1) = speed_ratio(Sim1{1,i+1},airplane);
        plot([1:i],speed_ratioArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 200])
        xlabel('time')
        ylabel('Speed Ratio')
        title("Speed Ratio")
    
 subplot(5,2,7)
 same_runwayArray1{1,1}(1,1) = 0;
 same_runwayArray1{1,1}(1,i+1) = same_runway1(Sim1{1,i},airplane);
        plot([1:i],same_runwayArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 yl])
        xlabel('time')
        ylabel('Aircraft')
        title("Same Runway")    
        
subplot(5,2,8)        
overtaking_conflictArray1{1,1}(1,1) = 0;
overtaking_conflictArray1{1,1}(1,i+1) = overtaking_conflict1(Sim1{1,i+1},airplane);
plot([1:i],overtaking_conflictArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 40])
        xlabel('time')
        ylabel('Aircraft')
        title("Overtaking Conflict")          

subplot(5,2,9)
crossing_conflictArray1{1,1}(1,1) = 0;
crossing_conflictArray1{1,1}(1,i+1) = crossing_conflict1(Sim1{1,i+1},airplane);
plot([1:i],crossing_conflictArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 40])
        xlabel('time')
        ylabel('Aircraft')
        title("Crossing Conflict")   
        

      %numofcomplexityArray{1,1}(1,1) = 0;
        %numofcomplexityArray{1,1}(1,i+1) = 5* (ac_climb1(Sim1{1,i},Sim1{1,i-1},airplane)) + 0.5*(acinsector(Sim{1,i},airplane)) ;
        %plotnumofcomplexity = plot([1:i],numofcomplexityArray{1,1}(1,[1:i]),'r');
        
%         numofcomplexityArray1{1,1}(1,1) = 0;
%         numofcomplexityArray1{1,1}(1,i+1) = w1*(acinsector1(Sim1{1,i},airplane))+ w2*(numofconflict1(Sim1{1,i},airplane))+ w3*(ac_climb1(Sim1{1,i},Sim1{1,i+d},airplane))...
%         + w4*(ac_descent1(Sim1{1,i},Sim1{1,i+d},airplane))+w5*(ac_cruise1(Sim1{1,i},Sim1{1,i+d},airplane))+ w6*(speed_ratio(Sim1{1,i+1},airplane)) ;
%         plotnumofcomplexity1 = plot([1:i],numofcomplexityArray1{1,1}(1,[1:i]),'b');
            
        
end

A1 = cell2mat(acinsectorArray1);
B1 = cell2mat(numofconflictArray1);
C1 = cell2mat(ac_climbArray1);
D1 = cell2mat(ac_descentArray1);
E1 = cell2mat(ac_cruiseArray1);
F1 = cell2mat(speed_ratioArray1);
G1 = cell2mat(same_runwayArray1);
H1 = cell2mat(overtaking_conflictArray1);
I1 = cell2mat(crossing_conflictArray1);

subplot(5,2,10)
numofcomplexityArray1 = w1*A1 + w2*B1 + w3*C1 + w4*D1 + w5*E1 + w6*F1 + w7*G1 + w8*H1 + w9*I1;

plotnumofcomplexity = plot(numofcomplexityArray1,'r');       
        
%legend('12NM','15NM')
        xlim([0 t])
        ylim([0 100])
        xlabel('time')
        ylabel('Complexity')
        title("Air Traffic Complexity")  
        
save('complexity_07.mat','acinsectorArray1', 'numofconflictArray1', 'ac_climbArray1','ac_descentArray1', 'ac_cruiseArray1', 'speed_ratioArray1', 'same_runwayArray1', 'overtaking_conflictArray1','crossing_conflictArray1','numofcomplexityArray1')