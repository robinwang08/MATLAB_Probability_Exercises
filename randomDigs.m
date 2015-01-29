function proportion = randomDigs(min,max,digs,sims,left_devs,right_devs)

% find the average of digs digits randomly selected between min and max (so
% min >= 0 and max <= 9).
% is this average within left_devs standard deviations to the left and 
% right_devs standard deviations to the right of the expected value?
% repeating this experiment sims times, find the proportion of times this
% test is passed, and output that proportion.

expected=(max+min)/2;

nos=(max-min+1);

expects = (nos+1)/2;

expsq=(1/6)*(nos+1)*(2*nos+1);

variances=(expsq-(expects^2));

avgvariance=(variances/digs);

sd=(avgvariance^(.5))

totals=0;

for i = 1:sims

    summer=0;
    
    for j = 1:digs
        
        digg = (randi(max-min+1) - 1)+(min);
        summer=summer+digg;
       
    end
    
    avgss=(summer/digs);
    
     if ((avgss <= (expected+(right_devs*sd))) && (avgss >= (expected-(left_devs*sd))))
        totals=totals+1;
     end
    
end

proportion = (totals/sims);

end