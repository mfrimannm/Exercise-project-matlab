function newData = filterData(data, filterChoice)
    % data is a matix with data type per clummen, like temp - growth - type
    % filterChoice is a vector N per 1, it will be composed so this
    % function kan make its action so fist a bit sayingen 1/0 if the action
    % should be done, and then how it should be done.
    
    % i make a vector that decompeses the filterChoice vector to be used
    % through the function.
    filterChoice = num2cell(filterChoice)
    [a,b,c,d] = deal(v{:})
    
    % v�lge hvilke bakerier, 1 ,2 , 3, 4
    % filterBak 1/0
    % tilv�lg bak 1,2,3,4
    
    % V�lge inden for maxs min temp, hvis en ikke s�ttes s� standart.
    % filterTemp 1/0
    % hvis 0 er givet ved min/max s�ttes standart
    % min 10 eller over
    % max 60 eller under
    
    % n�r der spr�ges til denne skal det g�res s� der altid st�r den
    % laveste temp ved min
    
    % v�lge inden for maxs min Groth speed, hvis en ikke s�ttes s� standart.
    % filterGrowth 1/0
    % hvis -1 er givet ved min/max s�ttes standart
    % min 0 eller over
    % max uendelig eller under
    