function [y] = holding(heading,rate,t_end,time)

time_half_turn = 180/rate; % 60s
time_end_first_turn = t_end - 15 - time_half_turn - 15;
time_start_last_turn = t_end - 15 - time_half_turn; %75
time_end_turn = t_end - 15; %135

if time <= time_end_first_turn
    y = heading + rate;
elseif time > time_end_first_turn && time <= time_start_last_turn
    y = heading;
elseif time > time_start_last_turn && time <= time_end_turn
    y = heading + 3;
elseif time > time_end_turn
    y = heading;
end


end