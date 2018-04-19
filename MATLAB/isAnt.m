function [ h, diff ] = isAnt( filename )
%isAnt() decides whether or not a neuron is anticipatory using the
%difference between its activity after the first cue and before the second
%cue.

% Thomas Kellogg
% Summer 2017

%% Load the file
load(filename)

%% Create DELAY1 and DELAY3
% Note that DELAY1 is the distribution of the number of firings from 1.6s
% to 2.1s, that is, the first third of the CUEDELAY period, and that DELAY3
% is measured from 2.5s to 3s in similar fashion, and is taken from the
% third third of the CUEDELAY period.

c=maxDelay(filename);

for n=1:length(MatData.class(c).ntr)
    ts=MatData.class(c).ntr(n).TS;
    delay1(n)=length(ts(ts>1.6 & ts<2.1));
    delay3(n)=length(ts(ts>2.5 & ts<3));
end

%% Test the delays against each other

diff = mean(delay3) - mean(delay1);
if diff - 0.5*mean(delay1) > 0
    h = 1;
else
    h = 0;
end

end
