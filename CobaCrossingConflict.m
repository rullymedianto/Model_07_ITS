t=time;


for i = 1:t


crossing_conflictArray1{1,1}(1,1) = 0;
crossing_conflictArray1{1,1}(1,i+1) = crossing_conflict1(Sim1{1,i+1},airplane);
plot([1:i],crossing_conflictArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 40])
        xlabel('time')
        ylabel('Aircraft')
        title("Crossing Conflict")   
end      
