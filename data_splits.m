% random split of the data
function data_splits=random_split(target, fold)
 
c = cvpartition(target,'k',fold);
 
for i=1:fold
    data_splits{i} = find(test(c,i)==1)';
end;