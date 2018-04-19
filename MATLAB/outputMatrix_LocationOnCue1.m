function [ fulldata ] = genSVM_PseudoMultiNeuron( filenames, outfilename )
%Generate CSV file for classifying cue location using CUE1 activity.
%   Acts like a pseud-multi-neuron model by combining data from different
%   neurons across each trial number.  Used for training a support vector
%   classifier in R from the e1071 library.  

%{
Thomas R. Kellogg
Spring 2018
TODO: scramble trials (Will this strengthen results?)
%}

fulldata=[];
% define the CUE1 range, may use function args to define other ranges in the future
tslower=1.0; 
tsupper=1.5;

%% Iterate through classes
for i=1:9
    %% Iterate through trials in each class
    for j=1:20
        % define a new vector of factors for each class-trial combination
        factorVector=[];
        %% Iterate through the neurons
        for k=1:length(filenames)
            % Load the neuron
            load(char(filenames(k)));
            %% Record nonempty data
            if ~(length(MatData.class(i).ntr)<j)
                ts = MatData.class(i).ntr(j).TS; % shorten for convenience
                % record firing rate over bounds
                factorVector(end+1) = length( ts( ts<tsupper & ts>=tslower ) ) / ( tsupper - tslower );
            else
                factorVector(end+1) = 0;
            end
        end
        % make the SVM entry (not yet sparse)
        fulldata(end+1,:) = [i factorVector];
    end
end

%% Write a file
csvwrite(outfilename,fulldata);

end