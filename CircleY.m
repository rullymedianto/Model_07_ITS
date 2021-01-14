    function [y] = CircleY(P)
    r = 4630;
    in = 1;
    for i = 0:pi/50:2*pi
        y(in) = r*cos(i)+P;
        in = in+1;
    end
end