% Note that this requires running scriptInitialClassify.m beforehand

lowers = 1:0.5:2.5;
affixes = ['0' '1' '2' '3'];

for i=1:4
%     outputMatrix_LocationOnInterval([spre spost],lowers(i),lowers(i)+0.5,strcat('susall',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval(spre,lowers(i),lowers(i)+0.5,strcat('suspre',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval(spost,lowers(i),lowers(i)+0.5,strcat('suspost',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval([apre apost],lowers(i),lowers(i)+0.5,strcat('antall',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval(apre,lowers(i),lowers(i)+0.5,strcat('antpre',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval(apost,lowers(i),lowers(i)+0.5,strcat('antpost',affixes(i),'.csv'));
%     
%     outputMatrix_LocationOnInterval([spre spost apre apost],lowers(i),lowers(i)+0.5,strcat('bothall',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval([spre apre],lowers(i),lowers(i)+0.5,strcat('bothpre',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval([spost apost],lowers(i),lowers(i)+0.5,strcat('bothpost',affixes(i),'.csv'));

    % stuff with neurons that are not just significant, but insignificant
    % too
    
%     outputMatrix_LocationOnInterval([ispre ispost iapre iapost],lowers(i),lowers(i)+0.5,strcat('insigbothall',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval([ispre iapre],lowers(i),lowers(i)+0.5,strcat('insigbothpre',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval([ispost iapost],lowers(i),lowers(i)+0.5,strcat('insigbothpost',affixes(i),'.csv'));

    outputMatrix_LocationOnInterval([ispre ispost],lowers(i),lowers(i)+0.5,strcat('insigsusall',affixes(i),'.csv'));
    outputMatrix_LocationOnInterval([iapre iapost],lowers(i),lowers(i)+0.5,strcat('insigantall',affixes(i),'.csv'));

%     outputMatrix_LocationOnInterval(ispre,lowers(i),lowers(i)+0.5,strcat('insigsuspre',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval(ispost,lowers(i),lowers(i)+0.5,strcat('insigsuspost',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval(iapre,lowers(i),lowers(i)+0.5,strcat('insigantpre',affixes(i),'.csv'));
%     outputMatrix_LocationOnInterval(iapost,lowers(i),lowers(i)+0.5,strcat('insigantpost',affixes(i),'.csv'));

end