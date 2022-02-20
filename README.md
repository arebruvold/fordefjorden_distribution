## README
For now this readme is incomplete as a major revision is planned in order to improve performance and user friendliness. Raw data from Agilent is handled automatically, requires version 2021/07/20 of the script "SNPExportTimeScanFiles.icpms.script". Perkin Elmer and other spectrogram formats can also be treated with minor adjustments to the code.

For automated calibration, ionic standards must be named appropriately:
- 100Ti50Si10Au is read as a mixture of 100 ppb Ti, 50 ppb Si, 10 ppb Au.
- Minium two points per calibration, can be 0. (E.g. 0TiSiAu and 10TiSiAu)
- Calibration as of now done relating mass to signal via a NP RM, also commonly referred to as size calibration.
- NP RM datafile must be specified, only using single RM advised and supported.
- Sample and datafile names must be unique.
- If density file for isotope is empty, bugs will occur.
- Multiple isotopes per element not supported as of now.

## Raw data available
*INSERT LINK*

## License
Code and scripts are for now under a Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) license.

Other data are subject to copyright and may not be used without permission.
