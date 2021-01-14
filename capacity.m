function [y] = capacity(sim,airplane)
Result = 0;
for i = 1:20
    if sim(1,i) == sim(17,i) && sim(4,i) < 15
        Result = Result + 1;
    end
    y = Result; 
end