
% coinTosses should execute run_time flips of n coins, and return
% the percentage of time that the proportion of heads is between 0.4 & 0.6.
% Note: the answer you put in online at Project Probability should be 
% the smallest n such that coinTosses(2000,n) consistently returns at least
% 95.

function percentage = coinTosses(run_time, n)

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
  
%   This is the end of the part that generates the vector of
%   coin flips. The rest of this program returns the
%   percentage of experiments, over all run_time experiments,
%   after which the proportion of heads was between 0.4 & 0.6.
%   Based on the outcome of this program, you can determine
%   what is the smallest n such that flipping n coins 2000
%   times consistently returns a percentage of heads equal to
%   95% or greater.

    numHeads=sum(flips);
    diff=abs(expecte-numHeads);
    diffe=diffe+diff;
    
    
end

percentage=(diffe/run_time)*100;

end


