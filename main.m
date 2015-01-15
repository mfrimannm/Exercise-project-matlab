%main fil, med menu system

run = 1;
while run
    choice = input('do something\n','s');
    switch choice
        case {'load data', 'L'}
            disp('Loading data');
        case 'filter data'
            disp('Filtering data');
        case 'display statistics'
            disp('Displaying statistics');
        case 'generate plots'
            disp('Generateing plots');
        case 'quit'
            disp('Quiting');
            run = 0;
        otherwise
            disp('Try agian and this time the right way');
    end
end