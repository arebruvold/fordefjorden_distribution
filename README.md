## README
This repository contains all code and small datasets for reproducing all processed data and visualizations presented in the manuscript [*Vertical distribution of inorganic nanoparticles in a Norwegian fjord*](https://doi.org/10.1016/j.marenvres.2023.105975):
* Processing of SP-ICP-MS raw data
* Statistical analysis and visualizations
* Cluster analysis

## SP-ICP-MS data processing
A major revision is planned in order to improve performance and user friendliness, the most current published version in the repository arebruvold/sp_development. Raw data from Agilent is handled automatically, requires version 2021/07/20 of the script "SNPExportTimeScanFiles.icpms.script". Perkin Elmer and other spectrogram formats can also be treated with minor adjustments to the code.

For automated calibration, ionic standards must be named appropriately:
- 100Ti50Si10Au is read as a mixture of 100 ppb Ti, 50 ppb Si, 10 ppb Au.
- Minium two points per calibration, can be 0. (E.g. 0TiSiAu and 10TiSiAu)
- Calibration as of now done relating mass to signal via a NP RM, also commonly referred to as size calibration.
- NP RM datafile must be specified, only using single RM advised and supported.
- Sample and datafile names must be unique.
- If density file for isotope is empty, bugs will occur.
- Multiple isotopes per element not supported as of now.

## Raw data available
Small datasets (total metals, SEM-EDS) are included in this repository or in the supplementary of the publication, whereas the SP-ICP-MS data is available on [Zenodo](https://doi.org/10.5281/zenodo.6187220).

## License
Code and scripts are under a Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) license.

Other data are subject to copyright and may not be used without permission.



[![DOI](https://zenodo.org/badge/461511652.svg)](https://zenodo.org/badge/latestdoi/461511652)

