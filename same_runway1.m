function [SR] = same_runway1(sim1,airplane)

load('Route.mat')
RWY_07LLD = 0;
RWY_07LTO = 0;
RWY_07RLD = 0;
RWY_07RTO = 0;


for i = 1:airplane

% Logic Same Runway for RWY 07L
if sim1(1,i) > 1 &&  sim1(4,i) > 70 && sim1(4,i)< 3000 && ...
        Route{1,i}(sim1(17,i),1) == -29127.2000000000
RWY_07LLD = RWY_07LLD +1;
end    

if sim1(1,i) > 1 &&  sim1(4,i) > 70 && sim1(4,i)< 3000 && ...
(Route{1,i}(2,1) == -8114.20000000000 || Route{1,i}(2,1) == -9407.10000000000)  %Untuk arrival 07L
RWY_07LTO = RWY_07LTO +1;
end

% Logic of Same Runway for RWY 07R
if sim1(1,i) > 1 &&  sim1(4,i) > 70 && sim1(4,i)< 3000 && ...
        Route{1,i}(sim1(17,i),1) == -28591.3000000000 
RWY_07RLD = RWY_07RLD +1;
end

if sim1(1,i) > 1 &&  sim1(4,i) > 70 && sim1(4,i)< 3000 && ...
        (Route{1,i}(2,1) == -41451.6000000000 || Route{1,i}(2,1) == 30754.7000000000 || Route{1,i}(2,1) == -4709.70000000000)  %Untuk departure 07L
RWY_07RTO = RWY_07RTO +1;
end
end

%Runway 07L
if RWY_07LLD > 0 && RWY_07LTO >0
    RWY_07L = RWY_07LLD + RWY_07LTO;
else
    RWY_07L = 0;
end

%Runway 07R
if RWY_07RLD > 0 && RWY_07RTO >0
    RWY_07R = RWY_07RLD + RWY_07RTO;
else
    RWY_07R = 0;
end

SR = RWY_07L + RWY_07R; %Total Same Runway 07