
[noc1 noc2 noc3 noc4 noc5 noc6 noc7 noc8] = cellfun(@vector_numofconflict1,Sim1);
vector_numofconflictArray1 = [noc1 noc2 noc3 noc4 noc5 noc6 noc7 noc8];
vector_numofconflictArray1 = movmedian(vector_numofconflictArray1,5);

plot(vector_numofconflictArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 30])
        xlabel('time')
        ylabel('Aircraft')
        title("Number of Conflict")