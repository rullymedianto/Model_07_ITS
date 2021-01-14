function [n] = numofconflict1(sim1,airplane)
global lim_low lim_up

Result = 0;
for i = 1:airplane
    if sim1(9,i) == 0 &&  sim1(4,i) > lim_low && sim1(4,i)< lim_up 
        Result = Result + 1;
    end
    y = Result; 
end