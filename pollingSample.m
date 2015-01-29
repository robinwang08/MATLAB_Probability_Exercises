function sample_size = pollingSample(error, conf)

% pollingSample should tell you how many people you need to interview to
% get an estimate for the entire population's proportion of Democrats if
% sample_prop of the people interviewed turned out to be Democrats, assuming
% you want a margin of error of #error (so #error is a number between 0 and 1)
% with #conf*100 percent confidence (so #conf is a number between 0 and 1).




a1=erfinv(conf);
a=a1*(2^.5);
sample_size=((a^2)*(.25))/(error^2);


end