
[noc1 noc2 noc3 noc4 noc5 noc6 noc7 noc8] = cellfun(@vector_crossingconflict1,Sim1);
vector_crossingconflictArray1 = [noc1' noc2' noc3' noc4' noc5' noc6' noc7' noc8'];
vector_crossingconflictArray1 = movmedian(vector_crossingconflictArray1,5);

plot(vector_crossingconflictArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 50])
        xlabel('time')
        ylabel('Aircraft')
        title("Number of Crossing Conflict")