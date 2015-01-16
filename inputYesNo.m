function YN = inputYesNo(prompt)
%This code tests if the user inputs yes or no correctly.

run = 1;
while run
    answer = lower(input(prompt, 's'));
    if answer == 'y'
        YN = 1;
        run = 0;
    elseif YN == 'n'    
        YN = 0;
        run = 0;
    else
        fprintf('\nInvalid input, please input either "Y" og "N" to continue');
    end
end
end

