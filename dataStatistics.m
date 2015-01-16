function result = dataStatistics(data, statistic)
% Denne funktion modtager data samt hvilken type statistik der ønskes,
% og returnerer så statistikken.

statistic = lower(statistic);

% i denne switch vælges der generalt først data, og derefter berenges
% det ønskede.
switch statistic
    case {'mean temperature','1'}
        result = mean(data(:,1));
    case {'mean growth rate','2'}
        result = mean(data(:,2));
    case {'std temperature','3'}
        result = std(data(:,1));
    case {'std growth rate','4'}
        result = std(data(:,2));
    case {'rows','5'}
        temp = size(data);
        result = temp(1);
    case {'mean cold rowth rate','6'}
        temp = data(:,1:2);
        temp = temp(temp(:,1) < 20,:);
        result = mean(temp(:,2));
    case {'mean hot growth rate','7'}
        temp = data(:,1:2);
        temp = temp(temp(:,1) > 50,:);
        result = mean(temp(:,2));
    otherwise
        result = 'Wrong input';
end
end
