# Measuring Systemic Risk in the Moroccan Banking Sector: A PCA Approach

This repository includes the code used in one of the master's projects "Measuring Systemic Risk in the Moroccan Banking Sector: A PCA Approach" by Khalil Belghouat.

In this project, a PCA approach is followed in order to assess and measure systemic risk in the Moroccan banking sector.

## Prerequisites

All operations, from data preprocessing to systemic risk assessment via PCA, were carried out on ```MATLAB```, version R2021a.

## Theoretical Background

In finance, systemic risk broadly denotes the risk of a cascading failure in the financial sector, caused by linkages within the financial system, resulting in a severe economic downturn. Due to its significant role in financial intermediation, the banking sector is typically the starting point of systemic risk analysis. Systemic risk measures classified in two families: (i) Individual systemic risk measures that quantify the contribution or the response of a single firm to a systemic event. (ii) Global systemic risk measures that quantify the response of the system as a whole to a systemic event. In this paper, a PCA approach is followed in order to assess and measure systemic risk in the Moroccan banking sector.

## Application and Results

At the core of systemic risk is commonality among multiple financial institutions, we thus attempt to measure commonality through PCA applied to the collection of banks listed on the Casablanca Stock Exchange. The results show that the first principal component captures 38.0978% of variability among banking institutions. Together, the first and second components explain 53.1845% of the return variation. Thus, a first principal component with higher explained variability implies higher commonality and level of interconnectedness among the various banking institutions and an increasing systemic risk.

## Code Structure

### About The Data

The data, a financial time series of the 6 banks listed on the Casablanca Stock Exchange, is organized in a table containing 7 columns. The first column contains the date, the following 4 columns contain the closing, opening, high and low prices of the MASI index, while the remaining columns contain the index's trading volumes and daily variations.

### Model Building and Estimation

The function ```pca``` was used to find the principal components coefficients, scores, as well as the percentage of the total variance explained by each principal component.
