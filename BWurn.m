% simulate the following game:
% your initial fortune is $dollabillz
% an urn contains w white balls and b black balls.
% you draw the balls out one at a time without replacement until all the
% balls are gone.
% on each draw, you bet a fraction, frac, of your current fortune on
% drawing a white ball.
% what is your final fortune?

function dollabillz = BWurn(dollabillz,frac,b,w)

totalBalls=b+w;
white=w/totalBalls;

for i=1:totalBalls
    totalBalls=b+w;
         white=w/totalBalls;
         
     if (rand(1) <= (white))
         dollabillz=(1+frac)*dollabillz;
         w=w-1;
     else
         dollabillz=(1-frac)*dollabillz;
         b=b-1;;
     end
end



end