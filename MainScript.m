loaded = 0;
runProgram = 1;
runMenu = 0;
ifFil = 0;

while runProgram
    if ifFil
        disp(filterChoice);
    end
    fprintf('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n 1. Load data.\n 2. Filter data.\n 3. Show statistic.\n 4. Generate diagrams.\n 5. Cancel.\n\n');
    menuChoice = str2double(input('Please enter the number of the action of choice: ', 's'));
    switch (menuChoice + loaded)
        case 1 % load datafile
            runMenu = 1;
            while runMenu
                fprintf('\nYou chose to load data.\nTo cancel enter "cancel"\n');
                filename = input('Please enter the name of the file you want to load: ', 's');
                if strcmpi(filename,'cancel')
                    runMenu = 0;
                elseif exist(filename,'file') ~= 0
                    data = dataLoad(filename);
                    newData = data;
                    fprintf('\nYou have successfully loaded the datafile named: %s\n',filename);
                    loaded = 10;
                    runMenu = 0;
                else
                    fprintf('\nInvalid filename, please try again.\n');
                    clear filename;
                end
            end
        case 12 % Filter data
            fprintf('\nYou chose to filter data.\nTo cancel enter "cancel"\n');
            filterChoice = filterInput;
            fprintf('Your filtering is set to:\n');
            disp(filterChoice);
            ifFil = 1;
            newData = dataFilter(data,filterChoice);
        case 13 % Show statistic
            runMenu = 1;
            while runMenu
                fprintf('\nYou chose to show statistic.\nYou have the following filter options:\n');
                fprintf('\n 1. Mean Temperature\n 2. Mean Growth rate\n 3. Std Temperature\n 4. Std Growth rate\n 5. Rows\n 6. Mean Cold Growth rate\n 7. Mean Hot Growth rate\n 8. Cancel\n\n');
                statistic = input('Please enter your choice of action: ', 's');
                if strcmpi(statistic,'cancel') || strcmp(statistic,'8')
                    fprintf('\nYou chose to cancel.\n');
                    runMenu = 0;
                else
                    result = dataStatistics(newData, statistic);
                    statistic = changeStatString(statistic);
                    fprintf('You chose to show %s which is %d \n',statistic,result);
                    runMenu = 0;
                end
            end
        case 14 % Generate diagrams
            fprintf('\nYou chose to generate diagrams.\n');
            dataPlot(newData)
        case {5, 15, 'cancel'} % quit program
            fprintf('\nYou chose to cancel.\n');
            runProgram = 0;
        otherwise
            fprintf('\nInvalid action. Please try again.\nRemember first to load data.\n')
    end
end