% SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
% Measuring Systemic Risk in the Moroccan Banking Sector: A PCA Approach

% This script applies correlation-based PCA to the data matrix.

% Data matrix
data = [ATW, BCI, BCP, BOA, CDM, CIH];

% Correlation matrix.
corr(data)

% PCA results.
[coeff, score, latent, tsquared, explained, mu] = pca(data, 'VariableWeights', 'variance')