function data = dataLoad(filename)

file = load(filename);
N = length(file'); %N equals number of rows in filename, i.e. length of filename transposed.
data = zeros(N, 3); %initializes data matrix for speed optimization.

count = 0;
j = 1; % this one is used as index i data matix
% while i is index in file matix

for i = 1:N
    if (file(i, 1) >= 10) && (file(i, 1) <= 60)
        if file(i, 2) >= 0
            if (file(i, 3) >= 1) && (file(i, 3) <= 4)
                data(j, :) = file(i, :);
                count = count + 1;
                j = j + 1;
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
end