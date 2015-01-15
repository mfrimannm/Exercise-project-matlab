function newData = dataFilter(data, filterChoice)
    % data is a matix with data type per clummen, like temp - growth - type
    % filterChoice is a vector N per 1, it will be composed so this
    % function kan make its action so fist a bit sayingen 1/0 if the action
    % should be done, and then how it should be done.
    
    % i make a vector that decompeses the filterChoice vector to be used
    % through the function.
    filterChoice = num2cell(filterChoice);
    [filterBacteria,bacteria1,bacteria2,bacteria3,bacteria4,filterTemp,minTemp,maxTemp,filterGrowthRate,minGrowthRate,maxGrowthRate] = deal(filterChoice{:});
    
    if filterBacteria
        if not(bacteria1)
            data = data((data(:,3)~=1),:);
        end
        
        if not(bacteria2)
            data = data((data(:,3)~=2),:);
        end
        
        if not(bacteria3)
            data = data((data(:,3)~=3),:);
        end
        
        if not(bacteria4)
            data = data((data(:,3)~=4),:);
        end
        
    end
       
    % vælge hvilke bakerier, 1 ,2 , 3, 4
    % filterBak 1/0
    % tilvælg bak 1,2,3,4
    
    if filterTemp
        if minTemp == 0
            minTemp = 10;
        end
        if maxTemp == 0
            maxTemp = 60;
        end
        if minTemp > maxTemp
            temp = minTemp;
            minTemp = maxTemp;
            maxTemp = temp;
        end
        
        data = data((data(:,1)> minTemp),:);
        data = data((data(:,1)< maxTemp),:);
    end
    
    % Vælge inden for maxs min temp, hvis en ikke sættes så standart.
    % filterTemp 1/0
    % hvis 0 er givet ved min/max sættes standart
    % min 10 eller over
    % max 60 eller under
    
    if filterGrowthRate
        if minGrowthRate > maxGrowthRate
            temp = minGrowthRate;
            minGrowthRate = maxGrowthRate;
            maxGrowthRate = temp;
        end
        
        data = data((data(:,2)> minGrowthRate),:);
        
        if maxGrowthRate > 0
        data = data((data(:,2)< maxGrowthRate),:);
        end
    % vælge inden for maxs min Groth speed, hvis en ikke sættes så standart.
    % filterGrowthRate 1/0
    % hvis -1 er givet ved min/max sættes standart
    % min 0 eller over
    % max uendelig eller under
    end
    
    newData = data;
end 