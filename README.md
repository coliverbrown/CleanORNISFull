# Clean ORNIS SKINMEAS Script
## Caitlyn Oliver Brown
### Last Update: 7 Dec 2022
[![DOI](https://zenodo.org/badge/575199920.svg)](https://zenodo.org/doi/10.5281/zenodo.10994631)
<br>

ORNIS full flat data outputs phenotypic skin measurements as a string of characters in one column. The data labels may not be consistant or have data in said cell. For example: `WCH:71.8; TL:65.5; TS:22.5; BL:11.6; BLH:6.4; BLW:5.2; SKL:36.3`. This can make parsing out data for analysis. <br>

Use this function for cleaning data downloaded from ORNIS. The first two sections of the function rename all the data labels to make them consistant throughout the data frame. The next section look for the labels and pull the values out and place them in new columns. Then, the function will place NAs where data is not available.

# Example
Check `example.R` for an example on how to use this function
