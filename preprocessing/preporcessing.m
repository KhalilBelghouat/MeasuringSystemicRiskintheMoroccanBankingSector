% SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
% Measuring Systemic Risk in the Moroccan Banking Sector: A PCA Approach

% This script passes the relevant data through important preprocessing steps.

% Import the corresponding data of several Moroccan banks.
opts = detectImportOptions('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/ATW Historical Data.csv');
opts = setvartype(opts, 'Price', 'string');
ATW = readtable('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/ATW Historical Data.csv', opts);
opts = detectImportOptions('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/BCI Historical Data.csv');
opts = setvartype(opts, 'Price', 'string');
BCI = readtable('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/BCI Historical Data.csv', opts);
opts = detectImportOptions('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/BCP Historical Data.csv');
opts = setvartype(opts, 'Price', 'string');
BCP = readtable('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/BCP Historical Data.csv', opts);
opts = detectImportOptions('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/BOA Historical Data.csv');
opts = setvartype(opts, 'Price', 'string');
BOA = readtable('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/BOA Historical Data.csv', opts);
opts = detectImportOptions('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/CDM Historical Data.csv');
opts = setvartype(opts, 'Price', 'string');
CDM = readtable('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/CDM Historical Data.csv', opts);
opts = detectImportOptions('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/CIH Historical Data.csv');
opts = setvartype(opts, 'Price', 'string');
CIH = readtable('D:/Toshiba/Systemic Risk in the Moroccan Banking Sector/data/CIH Historical Data.csv', opts);

% Flip the data tables up to down.
ATW = flipud(ATW);
BCI = flipud(BCI);
BCP = flipud(BCP);
BOA = flipud(BOA);
CDM = flipud(CDM);
CIH = flipud(CIH);

% Filter the dates common to all the data tables.
date = intersect(ATW.Date, BCI.Date);
date = intersect(date, BCP.Date);
date = intersect(date, BOA.Date);
date = intersect(date, CDM.Date);
date = intersect(date, CIH.Date);

% Extract rows with the common dates.
ATW = ATW(ismember(ATW.Date, date), :);
BCI = BCI(ismember(BCI.Date, date), :);
BCP = BCP(ismember(BCP.Date, date), :);
BOA = BOA(ismember(BOA.Date, date), :);
CDM = CDM(ismember(CDM.Date, date), :);
CIH = CIH(ismember(CIH.Date, date), :);

% String to double.
ATW = str2double(ATW.Price);
BCI = str2double(BCI.Price);
BCP = str2double(BCP.Price);
BOA = str2double(BOA.Price);
CDM = str2double(CDM.Price);
CIH = str2double(CIH.Price);