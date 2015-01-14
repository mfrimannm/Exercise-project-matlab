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
    
    
    % i denne switch vælges der generalt først data, og derefter berenges
    % det ønskede.
    switch statistic
        case 'Mean Temperature'
            result = mean(data(:,1));
        case 'Mean Growth rate'
            result = mean(data(:,2));
        case 'Std Temperature'
            result = std(data(:,1));
        case 'Std Growth rate'
            result = std(data(:,2));
        case 'Rows'
            temp = size(data);
            result = temp(1);
        case 'Mean Cold Growth rate'
            temp = data(:,1:2);
            temp = temp(temp(:,1) < 20,:);                       
            result = mean(temp(:,2));
        case 'Mean Hot Growth rate'
            temp = data(:,1:2);
            temp = temp(temp(:,1) > 50,:);                    
            result = mean(temp(:,2));
        otherwise
            result = 'wrong input';
    end
end
