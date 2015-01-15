function newData = dataFilter(data, filterChoice)
% data is a matix with data type per column, like temp - growth - type
% filterChoice is a vector N per 1, it will be composed so this
% function can make its action so fist a bit saying 1/0 if the action
% should be done, and then how it should be done.

% this does so the data input does not get chanced
newData = data;

% We make a vector that decomposes the filterChoice vector to be used
% through the function.
filterChoice = num2cell(filterChoice);
[filterBacteria,bacteria1,bacteria2,bacteria3,bacteria4,filterTemp,minTemp,maxTemp,filterGrowthRate,minGrowthRate,maxGrowthRate] = deal(filterChoice{:});

% Bacteria
if filterBacteria
    if not(bacteria1)
        newData = newData((newData(:,3)~=1),:);
    end
    
    if not(bacteria2)
        newData = newData((newData(:,3)~=2),:);
    end
    
    if not(bacteria3)
        newData = newData((newData(:,3)~=3),:);
    end
    
    if not(bacteria4)
        newData = newData((newData(:,3)~=4),:);
    end
    
end

% Temp
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
    
    newData = newData((newData(:,1)> minTemp),:);
    newData = newData((newData(:,1)< maxTemp),:);
end
% GrowthRate
if filterGrowthRate
    if minGrowthRate > maxGrowthRate
        temp = minGrowthRate;
        minGrowthRate = maxGrowthRate;
        maxGrowthRate = temp;
    end
    
    newData = newData((newData(:,2)> minGrowthRate),:);
    
    if maxGrowthRate > 0
        newData = newData((newData(:,2)< maxGrowthRate),:);
    end
end
end