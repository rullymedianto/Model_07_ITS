t=time;


for i = 1:t


overtaking_conflictArray1{1,1}(1,1) = 0;
overtaking_conflictArray1{1,1}(1,i+1) = overtaking_conflict1(Sim1{1,i+1},airplane);
plot([1:i],overtaking_conflictArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 40])
        xlabel('time')
        ylabel('Aircraft')
        title("Overtaking Conflict")   
end      
