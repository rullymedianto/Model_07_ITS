
[sr1 sr2 sr3 sr4 sr5 sr6 sr7 sr8] = cellfun(@vector_speedratio1,Sim1);
vector_speedratioArray2 = [sr1' sr2' sr3' sr4' sr5' sr6' sr7' sr8'];
vector_speedratioArray2 = movmedian(vector_speedratioArray2,5);

plot(vector_speedratioArray2,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 30])
        xlabel('time')
        ylabel('Aircraft')
        title("Speed Ratio")