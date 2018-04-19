function[sustained, anticipatory] = neuronClassify(filename)
%neuronClassify() returns the names of the neuron filenames that disagree.
% EXPECTED should be set to 1 if the neurons are expected to be
% anticipatory, and set to 0 if they are expected to be sustained.
% This program uses isAnt(), which includes accounts for offset and
% chooses BESTCLASS by CUEDELAY versus FIX instead of by CUERATE versus
% FIX.  

% Thomas Kellogg
% Summer 2017

%% get the files
[~, files] = xlsread(filename);

sustained={};
anticipatory={};
for n=1:length(files)
    if isAnt(char(files(n)))~=1
        sustained(end+1)=files(n);
    else
        anticipatory(end+1)=files(n);
    end
end

end