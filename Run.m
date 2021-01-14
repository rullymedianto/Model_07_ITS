number_simulation = 100;
j2 = 1;
while j2<=number_simulation
    run('Generator3D.m')
    run('Simulation.m')
    Separation(1,j2) = Separation_Minimum(1,1200);
    if Separation (1,j2)> 9260
        j2 = j2 + 1;
    else 
        j2 = j2;
    end
end
plot([1:number_simulation],Separation(1,:));
xlabel('Number Simulation')
ylabel('Separation Minimum')
xlim([0 100])
ylim([0 20000])