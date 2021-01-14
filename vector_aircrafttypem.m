
[sr1 sr2 sr3 sr4 sr5 sr6 sr7 sr8] = cellfun(@vector_aircrafttype1,Sim1);
vector_aircrafttypeArray1 = [sr1' sr2' sr3' sr4' sr5' sr6' sr7' sr8'];
vector_aircrafttypeArray1 = movmedian(vector_aircrafttypeArray1,5);

plot(vector_aircrafttypeArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 30])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Type")