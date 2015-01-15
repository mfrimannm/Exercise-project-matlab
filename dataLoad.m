function data = dataLoad(filename)

file = load(filename);
N = length(file'); %N equals number of rows in filename, i.e. length of filename transposed.
data = zeros(N, 3); %initializes data matrix for speed optimization.

for i = 1:N
        %if "Temperature" condition is met, insert valid row in data. Else false element becomes 0.
        if (file(i, 1) >= 10) && (file(i, 1) <= 60) 
            data(i, 1) = file(i, 1);
        else
            fprintf('\nThe temperature in row %d did not meet the condtions and was removed.\n',i)
        end
        %if "Growth rate" condition is met, insert valid row in data. Else false element becomes 0.
        if file(i, 2) >= 0
            data(i, 2) = file(i, 2);
        else
            fprintf('\nThe growth rate in row %d did not meet the condtions and was removed.\n',i)
        end
        %if "Bacteria" condition is met, insert valid row in data. Else false element becomes 0.
        if (file(i, 3) >= 1) && (file(i, 3) <= 4)
            data(i, 3) = file(i, 3);
        else
            fprintf('\nThe bacteira in row %d did not meet the condtions and was removed.\n',i)
        end
        for j = 1:3
            cond = data(:, j) == 0; %conditions for removing invalid rows, i.e. rows with zeros.
            data(cond, :) = []; %removes invalid rows where condition is met.
        end
end