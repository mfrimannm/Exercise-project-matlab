function filterChoice = filterInput
% Denne funktion prompter brugeren for input der bruges til filtreringen.
    filterChoice = zeros(1,11);
    
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

    tempYN = lower(input('\nWould you like to filter with respect to temperature? (Y/N): ', 's'));
    if tempYN == 'y'
        filterChoice(6) = 1;
        tempMinYN = lower(input('\nWould you like to input a minimum temperature for the filter? (Y/N): ', 's'));
        if tempMinYN == 'y'
            run = 1;
            while run
                minTemp = str2double(input('\nPlease insert the desired limit: ', 's'));
                if isnan(minTemp)
                    fprintf('\nInvalid number, please input valid number');
                else
                    minTemp = str2double(minTemp);
                    filterChoice(7) = minTemp;
                    run = 0;
                end
            end
        end
        tempMaxYN = lower(input('\nWould you like to input a maximum temperature for the filter? (Y/N): ', 's'));
        if tempMaxYN == 'y'
            run = 1;
            while run
                maxTemp = str2double(input('\nPlease insert the desired limit', 's'));
                if isnan(maxTemp)
                    fprintf('\nInvalid number, please input valid number');
                else
                    maxTemp = str2double(maxTemp);
                    filterChoice(8) = maxTemp;
                    run = 0;
                end
            end
        end
    end

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
                    minGrowth = str2double(minGrowth);
                    filterChoice(8) = minGrowth;
                    run = 0;
                end
                filterChoice(10) = minGrowth;
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
                    maxGrowth = str2double(maxGrowth);
                    filterChoice(8) = maxGrowth;
                    run = 0;
                end
                filterChoice(10) = minGrowth;
            end
            filterChoice(11) = maxGrowth;
        end
    end

end

