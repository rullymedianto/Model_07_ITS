t=time;


for i = 1:t


same_runwayArray1{1,1}(1,1) = 0;
same_runwayArray1{1,1}(1,i+1) = same_runway1(Sim1{1,i},airplane);
plot([1:i],same_runwayArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 40])
        xlabel('time')
        ylabel('Aircraft')
        title("Same Runway")   
end      
