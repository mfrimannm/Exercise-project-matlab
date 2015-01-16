function filterChoice = filterInput
% Denne funktion prompter brugeren for input der bruges til filtreringen.
% Disse instillinger gemmen i en vector som bruges andet sted i programmet.
filterChoice = zeros(1,11);

% Bacteria
bacYN = ('\nWould you like to filter with respect to bacteria types? (Y/N): ');
if inputYesNo(bacYN)
    filterChoice(1) = 1;
    bac_1YN = ('\nWould you like to include Salmonella enterica in the data? (Y/N): ');
    if inputYesNo(bac_1YN)
        filterChoice(2) = 1;
    end
    
    bac_2YN = ('\nWould you like to include Bacillus cereus in the data? (Y/N): ');
    if inputYesNo(bac_2YN)
        filterChoice(3) = 1;
    end
    
    bac_3YN = ('\nWould you like to include Listeria in the data? (Y/N): ');
    if inputYesNo(bac_3YN)
        filterChoice(4) = 1;
    end
    
    bac_4YN = ('\nWould you like to include Brochothrix thermosphacta in the data? (Y/N): ');
    if inputYesNo(bac_4YN)
        filterChoice(5) = 1;
    end
end

% Temp
tempYN = ('\nWould you like to filter with respect to temperature? (Y/N): ');
if inputYesNo(tempYN)
    filterChoice(6) = 1;
    tempMinYN = ('\nWould you like to input a minimum temperature for the filter? (Y/N): ');
    if inputYesNo(tempMinYN)
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
    tempMaxYN = ('\nWould you like to input a maximum temperature for the filter? (Y/N): ');
    if inputYesNo(tempMaxYN)
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
growthYN = ('\nWould you like to filter with respect to growth rate? (Y/N): ');
if inputYesNo(growthYN)
    filterChoice(9) = 1;
    growthMinYN = ('\nWould you like to input a minimum growth rate for the filter? (Y/N): ');
    if inputYesNo(growthMinYN)
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
    growthMaxYN = ('\nWould you like to input a maximum growth rate for the filter? (Y/N): ');
    if inputYesNo(growthMaxYN)
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