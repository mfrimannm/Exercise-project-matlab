function result = dataStatistics(data, statistic)
    % denne funktion vil beregne sig frem til en skalar som indeholder den
    % beregnede statistik
    % outputtet vil være et tal hvis værdi afhænger af hvad der bedes
    % beregnet via inputtet "statistic", listen af muligheder er følgende:
    %'Mean Temperature' Middelvrdi (gennemsnit) af Temperature.
    %'Mean Growth rate' Middelvrdi (gennemsnit) af Growth rate.
    %'Std Temperature' Standard-afvigelse af Temperature.
    %'Std Growth rate' Standard-afvigelse af Growth rate.
    %'Rows' Det totale antal rkker i data.
    %'Mean Cold Growth rate' Middelvrdi (gennemsnit) af Growth rate
    %hvor Temperature er mindre end 20 grader.
    %'Mean Hot Growth rate' Middelvrdi (gennemsnit) af Growth rate
    %hvor Temperature er strre end 50 grader.
    
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
