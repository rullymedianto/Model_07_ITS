function [CC] = crossing_conflict1(sim1,airplane)

load('Route.mat')

GAPRI = 0;
NOKTA = 0;

lim_low07L = meter(30000);
lim_up07L = meter(32000);
lim_low07R = meter(20000);
lim_up07R = meter(30000);

for i = 1:airplane

% Logic Crossing GAPRI
if sim1(1,i) > 1 &&  sim1(4,i) > lim_low07L && sim1(4,i)< lim_up07L && ... % limit up dan lower
     (Route{1,i}(2,1) == 120082.100000000 || Route{1,i}(3,1) == 120082.100000000 || Route{1,i}(4,1) == 120082.100000000) ; %Crossing GAPRI
GAPRI = GAPRI +1;
end

% Logic Crossing NOKTA
if sim1(1,i) > 1 &&  sim1(4,i) > lim_low07R && sim1(4,i)< lim_up07R && ... % limit up dan lower
    (Route{1,i}(3,1) == 0 || Route{1,i}(4,1) == 0 || Route{1,i}(5,1) == 0) ; %Crossing NOKTA
NOKTA = NOKTA +1;
end
end

%GAPRI
if GAPRI > 1
    GAPRI = GAPRI;
else
    GAPRI = 0;
end

%RNOKTA
if NOKTA > 1
    NOKTA = NOKTA;
else
    NOKTA = 0;
end
CC = GAPRI + NOKTA ; %Total Crossing Conflict