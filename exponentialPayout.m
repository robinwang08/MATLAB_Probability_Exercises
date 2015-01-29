function winnings = exponentialPayout(cost,plays,max)

% If you play $cost to play the game, and you play it plays
% times, calculate your average winnings (you win $2^k if the first head
% turns up on the kth toss and k <= max, and otherwise you win $2^max).


win=0;

for j = 1:plays
 
    i=1;
    
    while(rand(1) > .5)
        i=i+1;
    end
        
        if (i <= max)
        win=win+(2^i);
        else
            win=win+(2^max);
        end
end
   
winnings=((win-(cost*plays))/plays);
            
end