function data = dataLoad(filename)

file = load(filename);
N = length(file'); %N equals number of rows in filename, i.e. length of filename transposed.
data = zeros(N, 3); %initializes data matrix for speed optimization.

count = 0;

for i = 1:N
    if (file(i, 1) >= 10) && (file(i, 1) <= 60)
        if file(i, 2) >= 0
            if (file(i, 3) >= 1) && (file(i, 3) <= 4)
                data(i, :) = file(i, :);
                count = count + 1;
            else
                fprintf('\nThe bacteira in row %d did not meet the condtions and was removed.\n',i);
            end
        else
            fprintf('\nThe growth rate in row %d did not meet the condtions and was removed.\n',i);
        end
    else
        fprintf('\nThe temperature in row %d did not meet the condtions and was removed.\n',i);
    end
end
data = data(1:count,:);

%{

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
    
    % denne funktion kan byttes ud så du ser på længden af den nye ved at
    % lave en count for hvor mange gange den har gemt noget, og bruge denne
    % til at forkorte data
    
    % desuden giver det nogen problmmer at tjekke en kondistion og hvis den
    % er sand gemme det i data og så tjekke næste, dette betyder at hvis
    % Growth rate er 0, så kommer denne række ALDRIG med da den fjernes
    % forneden.

    % desuden siger opgaven at hele linjen skal springs over hvis en
    % kondistion ikke opflydes hvilke ikke sker her fordi den faktisk kan
    % gemme to ting af en række og så springe videre hvis Bacteria ikke er
    % 1,2,3,4.
    for j = 1:3
        cond = data(:, j) == 0; %conditions for removing invalid rows, i.e. rows with zeros.
        data(cond, :) = []; %removes invalid rows where condition is met.
    end
%}
end