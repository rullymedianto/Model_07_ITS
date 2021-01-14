
[cl1 cl2 cl3 cl4 cl5 cl6 cl7 cl8]  = cellfun(@vector_climb1,Sim1);
vector_climbArray1 = [cl1' cl2' cl3' cl4' cl5' cl6' cl7' cl8'];
vector_climbArray1 = movmedian(vector_climbArray1,5);
plot(vector_climbArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 30])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Climb")