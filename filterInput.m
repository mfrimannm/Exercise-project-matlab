function filterVector = filterInput()
% Denne funktion prompter brugeren for input der bruges til filtreringen.

filterVector = zeros(1,11);

bacYN = lower(input('\nWould you like to filter with respect to bacteria types? (Y/N): ', '%s'));
if bacYN == 'y'
   filterVector(1) = 1;
   bac_1YN = lower(input('\nWould you like to include Salmonella enterica in the data? (Y/N): ', '%s'));
   if bac_1YN == 'y'
       filterVector(2) = 1;
   end
   
   bac_2YN = lower(input('\nWould you like to include Bacillus cereus in the data? (Y/N): ', '%s'));
   if bac_2YN == 'y'
       filterVector(3) = 1;
   end
   
   bac_3YN = lower(input('\nWould you like to include Listeria in the data? (Y/N): ', '%s'));
   if bac_3YN == 'y'
       filterVector(4) = 1;
   end
   
   bac_4YN = lower(input('\nWould you like to include Brochothrix thermosphacta in the data? (Y/N): ', '%s'));
   if bac_4YN == 'y'
       filterVector(5) = 1;    
   end
end

tempYN = lower(input('\nWould you like to filter with respect to temperature? (Y/N): ', '%s'));
if tempYN == 'y'
   filterVector(6) = 1; 
   tempMinYN = lower(input('\nWould you like to input a minimum temperature for the filter? (Y/N): ', '%s'));
   if tempMinYN == 'y'
      run = 1;
      while run
          minTemp = input('\nPlease insert the desired limit', '%s'));
          if isnan(minTemp)
              fprintf('\nInvalid number, please input valid number');
          else 
              minTemp = str2double(minTemp); 
              filterVector(7) = minTemp;
              run = 0;
          end
      end
   end
   tempMaxYN = lower(input('\nWould you like to input a maximum temperature for the filter? (Y/N): ', '%s'));
   if tempMaxYN == 'y'
      run = 1;
      while run
          maxTemp = input('\nPlease insert the desired limit', '%s'));
          if isnan(maxTemp)
              fprintf('\nInvalid number, please input valid number');
          else 
              maxTemp = str2double(maxTemp); 
              filterVector(8) = maxTemp;
              run = 0;
          end
      end
   end
end

growthYN = lower(input('\nWould you like to filter with respect to growth rate? (Y/N): ', '%s'));
if growthYN == 'y'
   filterVector(9) = 1; 
   growthMinYN = lower(input('\nWould you like to input a minimum growth rate for the filter? (Y/N): ', '%s'));
   if growthMinYN == 'y'
      run = 1;
      while run
          minGrowth = input('\nPlease insert the desired limit', '%s'));
          if isnan(minGrowth)
              fprintf('\nInvalid number, please input valid number');
          else 
              minGrowth = str2double(minGrowth); 
              filterVector(8) = minGrowth;
              run = 0;
          end
          filterVector(10) = minGrowth;
      end
   end
   growthMaxYN = lower(input('\nWould you like to input a maximum growth rate for the filter? (Y/N): ', '%s'));
   if growthMaxYN == 'y'
      run = 1;
      while run
          maxGrowth = input('\nPlease insert the desired limit', '%s'));
          if isnan(maxGrowth)
              fprintf('\nInvalid number, please input valid number');
          else 
              maxGrowth = str2double(maxGrowth); 
              filterVector(8) = maxGrowth;
              run = 0;
          end
          filterVector(10) = minGrowth;
      end
      filterVector(11) = maxGrowth;
   end
end

end

