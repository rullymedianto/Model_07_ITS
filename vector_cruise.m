
[cruis1 cruis2 cruis3 cruis4 cruis5 cruis6 cruis7 cruis8] = cellfun(@vector_cruise1,Sim1);
vector_cruiseArray1 = [cruis1' cruis2' cruis3' cruis4' cruis5' cruis6' cruis7' cruis8'];
vector_cruiseArray1 = movmedian(vector_cruiseArray1,5);

plot(vector_cruiseArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 30])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Cruise")