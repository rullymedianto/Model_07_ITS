
for i = 1:time
for j = 1:airplane
    if sched(i,j)==1
        
        Sim1{1,i+1}(2,j) = InitialPos(1,j);                    %X
        Sim1{1,i+1}(3,j) = InitialPos(2,j);                    %Y
        Sim1{1,i+1}(4,j) = InitialPos(3,j);    
    Sim1{1,i+1}(1,j) = Sim1{1,i}(1,j);
    end
    Sim1{1,i+1}(1,j) = 1;
    
        
    if sched(i,j)==1
        Sim1{1,i+1}(5,j) = Route{1,j}(Sim1{1,i+1}(1,j),1) - Sim1{1,i+1}(2,j);    %Delta x
        Sim1{1,i+1}(6,j) = Route{1,j}(Sim1{1,i+1}(1,j),2) - Sim1{1,i+1}(3,j);    %Delta y
        Sim1{1,i+1}(7,j) = Route{1,j}(Sim1{1,i+1}(1,j),3) - Sim1{1,i+1}(4,j);    %Delta z
        
    else
        Sim1{1,i+1}(5,j) = 0;  %Delta x
        Sim1{1,i+1}(6,j) = 0;    %Delta y
        Sim1{1,i+1}(7,j) = 0;    %Delta z
    end
end
end


