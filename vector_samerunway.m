global fig_index

vector_samerunwayArray1 = cellfun(@vector_samerunway1,Sim1);
vector_samerunwayArray1 = movmedian(vector_samerunwayArray1,5);

fig=plot(vector_samerunwayArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 100])
        xlabel('time')
        ylabel('Aircraft')
        title("Number of Same Runway")
        
        saveas(fig,'Number of Same Runway','jpg')