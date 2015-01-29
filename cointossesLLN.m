function percentage = cointossesLLN(n,run_time)


%%% This part just generates a vector of length n containing %%%
%   the result of each flip -- 0 or 1.                         %

    flips = zeros(1,n);
	% initialize the vector "flips" -- it starts off as a bunch of 0's
    
 
    diffe=0;
    expecte=n*.5;
    
for trial=1:run_time
    for i=1:n
	    flips(i) = randi(2)-1;
	    % at each cell of the vector, generator a random integer between 1 and
	    % 2 and subtract 1 from it (so we have a random integer between 0 and
	    % 1)
    end
  
%%% This is the end of the part that generates the vector of %%%
%   coin flips. The rest of this program should return the     %
%   percentage of experiments, over all run_time experiments,  %
%   after which the proportion of heads was between 0.4 & 0.6. %
%   Based on the outcome of this program, you should determine %
%   what is the smallest n such that flipping n coins 2000     %
%   times consistently returns a percentage of heads equal to  %
%%%  95% or greater.                                         %%%

    numHeads=sum(flips);
    diff=abs(expecte-numHeads);
    diffe=diffe+diff;
    
    
end

percentage=(diffe/run_time);


end
