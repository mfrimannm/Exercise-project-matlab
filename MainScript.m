
loaded = 0;

while true
    fprintf('\n 1. Load data.\n 2. Filter data.\n 3. Show statistic.\n 4. Generate diagrams.\n 5. Cancel.\n\n');
    menuChoice = str2double(input('Please enter the number of the action of choice: ', 's'));
    switch (menuChoice + loaded)
        case 1
            fprintf('\nYou chose to load data.\nTo cancel enter "cancel"\n');
            
            while true
            fprintf('\nYou chose to load data.\nTo cancel enter "cancel"\n');  
            filename = input('Please enter the name of the file you want to load: ', 's');
                if strcmpi(filename,'cancel')
                    break;
                elseif exist(filename,'file') ~= 0
                    data = dataLoad(filename);
                    loaded = 10;
                    break;
                else
                   fprintf('\nInvalid filename, please try again.\n');
                   clear filename;
                end
            end
                           
        case 12
            fprintf('\nYou chose to filter data.\n');
            %dataFilter fuction?!?!?
            break;
        case 13
            fprintf('\nYou chose to show statistic.\n');
            dataStatistics(data, statistic)
            break;
        case 14
            fprintf('\nYou chose to generate diagrams\n');
            dataPlot(data)
            %break;
        case {5, 15}
            fprintf('\nYou chose to cancel.\n');
            break;
        otherwise
            fprintf('\nInvalid action. Please try again.\nRemember to load data first.\n')
    end
end

