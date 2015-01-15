function newString = changeStatString(statString)
% En switch der ændrer den string der skal printes i main, for at give et
% pænere output.

switch statString
    case 1
        newString = 'Mean Temperature';
    case 2
        newString = 'Mean Growth rate';
    case 3
        newString = 'Standart Temperature';
    case 4
        newString = 'Standart Growth rate';
    case 5
        newString = 'Rows';
    case 6
        newString = 'Mean Cold Growth rate';
    case 7
        newString = 'Mean Hot Growth rate';
    otherwise    
        newString = statString;
end

end

