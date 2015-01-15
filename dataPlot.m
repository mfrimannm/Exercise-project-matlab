function dataPlot(data)
% Funktionen sorterer matricen og plotter relevante grafer.

% Dataen sorteres efter laveste temperatur.
data = sortrows(data,1);

% De rækker der hører til hver enkel type bakterie identificeres.
bac_1 = data(:,3) == 1;
bac_2 = data(:,3) == 2;
bac_3 = data(:,3) == 3;
bac_4 = data(:,3) == 4;
% Den højest forekommende frekvens hos en type af bakterie findes.
bacTot = [sum(bac_1),sum(bac_2),sum(bac_3),sum(bac_4)];
NBac = max(bacTot);

% De relevante rækker i kollonen med "growth rate" ligges over i nogle nye
% arrays.
g_1 = data(bac_1,2);
g_2 = data(bac_2,2);
g_3 = data(bac_3,2);
g_4 = data(bac_4,2);

% Tilsvarende ligges de relevante rækker med temperaturer over i nye
% arrays.
temp_1 = data(bac_1,1);
temp_2 = data(bac_2,1);
temp_3 = data(bac_3,1);
temp_4 = data(bac_4,1);

% Bakteriernes position/værdi initialiseres.
ybac = [1,2,3,4];

% Vinduet åbnes, det er designet til et vindue af passende størrelse.
figure('Position', [100, 75, 1000, 600]);

% Først laves subplot 1, som er et søjlediagram:
subplot(2,1,1);
bar(ybac,bacTot,'b');  
% y aksen sættes til altid at ligge mellem 0 og 10% over højest
% forekommende frekvens af en enkel type bakterie.
ylim([0,(NBac+(NBac*0.1))]);

% Titel på graf og akser, samt de enkelte søjler tilføjes.
title('Frequency of bacteria');
xlabel('Bacteria type');
ylabel('Frequency');
set(gca, 'XTickLabel', {'Salmonella enterica','Bacillus cereus','Listeria','Brochothrix thermosphacta'});

% Subplot 2 laves så, det er et normalt plot der viser vækstrate i forhold
% til temperatur. Plottet består af 4 seperate linjer, 1 til hver bakterie.
subplot(2,1,2);
% Alle linjerne tegnes, samt punkter der viser de reelle datapunkter.
plot(temp_1,g_1,'-b',temp_2,g_2,'-r',temp_3,g_3,'-k',temp_4,g_4,'-g',temp_1,g_1,'.b',temp_2,g_2,'.r',temp_3,g_3,'.k',temp_4,g_4,'.g')
xlim([10,60]);
% Titel på graf og akser, samt forklaring på hvilke linjer der er hvad.
legend('Salmonella enterica', 'Bacillus Cereus','Listeria','Brochothrix thermosphacta','Location','NorthEast');
legend boxoff;
title('Growth to temperature dependancy');
xlabel('Temperature');
ylabel('Growth rate');

end

