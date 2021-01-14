
[acin1 acin2 acin3 acin4 acin5 acin6 acin7 acin8] = cellfun(@vector_acinsector1,Sim1);
vector_acinsectorArray1 = [acin1' acin2' acin3' acin4' acin5' acin6' acin7' acin8']
vector_acinsectorArray1 = movmedian(vector_acinsectorArray1,5);

plot(vector_acinsectorArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 30])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft in Sector")