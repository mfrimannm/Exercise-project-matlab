function newData = filterData(data, filterChoice)
    % data is a matix with data type per clummen, like temp - growth - type
    % filterChoice is a vector N per 1, it will be composed so this
    % function kan make its action so fist a bit sayingen 1/0 if the action
    % should be done, and then how it should be done.
    
    % i make a vector that decompeses the filterChoice vector to be used
    % through the function.
    
    v= 1:4
    v = num2cell(v)
    [a,b,c,d] = deal(v{:})
    
    