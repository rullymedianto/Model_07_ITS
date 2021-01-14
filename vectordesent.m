d=2;
t=time;
yl= 20;

if i+d > t+1  
    d=1;
else
    d=d;
end   
for i = 1:t
vector_descentArray1{1,1}(1,1) = 0;
vector_descentArray1{1,1}(1,i+1) = vector_descent1(Sim1{1,i},Sim1{1,i+d});
        plot([1:i],vector_descentArray1{1,1}(1,[1:i]),'r');
        
        %legend('12NM','15NM')
        xlim([0 t])
        ylim([0 yl])
        xlabel('time')
        ylabel('Aircraft')
        title("Aircraft Descending")
        %hold on
        
end