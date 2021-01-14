
[ot1 ot2 ot3 ot4 ot5 ot6 ot7 ot8] = cellfun(@vector_overtakingconflict1,Sim1);
vector_overtakingconflictArray1 = [ot1' ot2' ot3' ot4' ot5' ot6' ot7' ot8'];
vector_overtakingconflictArray1 = movmedian(vector_overtakingconflictArray1,5);

plot(vector_overtakingconflictArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 100])
        xlabel('time')
        ylabel('Aircraft')
        title("Number of Overtaking Conflict")