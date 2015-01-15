function filterChoice = filterInput
% Denne funktion prompter brugeren for input der bruges til filtreringen.
% Disse instillinger gemmen i en vector som bruges andet sted i programmet.
filterChoice = zeros(1,11);

% Bacteria
bacYN = lower(input('\nWould you like to filter with respect to bacteria types? (Y/N): ', 's'));
if bacYN == 'y'
    filterChoice(1) = 1;
    bac_1YN = lower(input('\nWould you like to include Salmonella enterica in the data? (Y/N): ', 's'));
    if bac_1YN == 'y'
        filterChoice(2) = 1;
    end
    
    bac_2YN = lower(input('\nWould you like to include Bacillus cereus in the data? (Y/N): ', 's'));
    if bac_2YN == 'y'
        filterChoice(3) = 1;
    end
    
    bac_3YN = lower(input('\nWould you like to include Listeria in the data? (Y/N): ', 's'));
    if bac_3YN == 'y'
        filterChoice(4) = 1;
    end
    
    bac_4YN = lower(input('\nWould you like to include Brochothrix thermosphacta in the data? (Y/N): ', 's'));
    if bac_4YN == 'y'
        filterChoice(5) = 1;
    end
end

% Temp
tempYN = lower(input('\nWould you like to filter with respect to temperature? (Y/N): ', 's'));
if tempYN == 'y'
    filterChoice(6) = 1;
    tempMinYN = lower(input('\nWould you like to input a minimum temperature for the filter? (Y/N): ', 's'));
    if tempMinYN == 'y'
        run = 1;
        while run
            minTemp = str2double(input('\nPlease insert the desired limit: ', 's'));
            if isnan(minTemp)
                fprintf('\nInvalid number, please input valid number: ');
            else
                filterChoice(7) = minTemp;
                run = 0;
            end
        end
    end
    tempMaxYN = lower(input('\nWould you like to input a maximum temperature for the filter? (Y/N): ', 's'));
    if tempMaxYN == 'y'
        run = 1;
        while run
            maxTemp = str2double(input('\nPlease insert the desired limit: ', 's'));
            if isnan(maxTemp)
                fprintf('\nInvalid number, please input valid number: ');
            else
                filterChoice(8) = maxTemp;
                run = 0;
            end
        end
    end
end

% GrowthRate
growthYN = lower(input('\nWould you like to filter with respect to growth rate? (Y/N): ', 's'));
if growthYN == 'y'
    filterChoice(9) = 1;
    growthMinYN = lower(input('\nWould you like to input a minimum growth rate for the filter? (Y/N): ', 's'));
    if growthMinYN == 'y'
        run = 1;
        while run
            minGrowth = str2double(input('\nPlease insert the desired limit: ', 's'));
            if isnan(minGrowth)
                fprintf('\nInvalid number, please input valid number');
            else
                filterChoice(10) = minGrowth;
                run = 0;
            end
        end
    end
    growthMaxYN = lower(input('\nWould you like to input a maximum growth rate for the filter? (Y/N): ', 's'));
    if growthMaxYN == 'y'
        run = 1;
        while run
            maxGrowth = str2double(input('\nPlease insert the desired limit: ', 's'));
            if isnan(maxGrowth)
                fprintf('\nInvalid number, please input valid number');
            else
                filterChoice(11) = maxGrowth;
                run = 0;
            end
        end
    end
end
end

