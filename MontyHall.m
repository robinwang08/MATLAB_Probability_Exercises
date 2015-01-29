function proportion = MontyHall(num_doors,switch_choice,num_simulations)

% MontyHall should return the probabiliyt of winning if you're on the
% game show with num_doors doors and you pick one door -- Monty then shows
% you all but one of the remaining doors. switch_choice should be 0 or 1 --
% if switch_choice is 0, you don't switch, and if it is 1, you do. 
% Run this simulation num_simulations times and output the proportion of
% times that you win. 

win = 0;
n = num_doors;

for sim=1:num_simulations
    
     if (switch_choice == 1)
     success = ((n-1)/n);
     
     if (rand(1) <= ((n-1)/n))
         win=win+1;
     end
     
     end
     
     if (switch_choice == 0)
     success = (1/n);
     
     if (rand(1) <= (1/n))
     win=win+1;
     end
     
     end
     
end

proportion = (win/num_simulations);

end