function [ bestaverageindex,averagedelay ] = maxDelay( filename )
%maxDelay() returns the class with the highest average delay.

% Thomas Kellogg
% Summer 2017

load(char(filename));

%% Pull data from each class in the file for significance-checking
for i=1:length(MatData.class)

    % assign a first delay vector
    % (this vector is a list of the number of firings over the first
    % delay period for each trial of this class for this neuron/file)
    firstdelay=[];
    for j=1:length(MatData.class(i).ntr)
        ts = MatData.class(i).ntr(j).TS;
        firstdelay(j)=length(ts(ts>1.6 & ts<3));
    end

    averagedelay(i)=mean(firstdelay);
    
end
    
%% Check the significance of each class

[~,bestaverageindex]=max(averagedelay);

end

