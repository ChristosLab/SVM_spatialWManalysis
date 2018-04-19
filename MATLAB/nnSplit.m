function [ targets, output, input ] = nnSplit( filename )
%nnSplit divides CSV time period activity data into targets and inputs for neural net fitting.

%{
Thomas R. Kellogg
Spring 2018
%}

if filename(end-3)=='.'
    truncatedFilename = filename(1:end-4);
else
    truncatedFilename = filename;
end

firingdata = struct;
firingdata.file = csvread(strcat(truncatedFilename,'.csv'));
firingdata.in = firingdata.file(:,2:end);
firingdata.out = firingdata.file(:,1);

for i=1:length(firingdata.out)
    firingdata.targets(i,firingdata.out(i))=1;
end

targets = firingdata.targets;
input = firingdata.in;
output = firingdata.out;

%csvwrite(strcat(truncatedFilename,'targets','.csv'), targets);
csvwrite(strcat(truncatedFilename,'in','.csv'), input);

end

