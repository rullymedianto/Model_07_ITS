%vector_descentArray1 = zeros (8,t);

[tr1 tr2 tr3 tr4 tr5 tr6 tr7 tr8] = cellfun(@vector_descent1,Sim1);
vector_descentArray1 = [tr1' tr2' tr3' tr4' tr5' tr6' tr7' tr8'];
vector_descentArray1 = movmedian(vector_descentArray1,5);

plot(vector_descentArray1,'b');
        
        %legend('12NM','15NM')   
        xlim([0 t])
        ylim([0 30])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Descent")
        
%         , tr2, tr3, tr4, tr5, tr6, tr7, tr8
%         , tr2', tr3', tr4', tr5', tr6', tr7', tr8'