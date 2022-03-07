% SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
% Measuring Systemic Risk in the Moroccan Banking Sector: A PCA Approach

% This script calculates the log-returns of each bank.

% Get log-returns.
ATW = diff(log(ATW));
BCI = diff(log(BCI));
BCP = diff(log(BCP));
BOA = diff(log(BOA));
CDM = diff(log(CDM));
CIH = diff(log(CIH));



