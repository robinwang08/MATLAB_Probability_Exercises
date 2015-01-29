function prop = LoLN(n,p,tolerance,num_sims)

% LoLN illustrates the Law of Large Numbers with n independent Bernoulli
% trials, each having probability p of success; if X is the random variable
% (# success)/(# trials), the Law of Large Numbers says that as n increases,
% the outcomes for X should be near E[X].
% LoLN should output the proportion of simulations in which
% X is within tolerance of E[X].
%


expected=p;
totals=0;
winn=0;

for i = 1:num_sims
    
    win=0;
    
for j = 1:n
    
    ra=rand(1);
    
    if (ra <= p)
        win=win+1;
    end
end

winn=(win/n);

if ((winn <= (expected+tolerance)) && (winn >= (expected-tolerance)))

    totals=totals+1;

end

end

prop=totals/num_sims;

end

