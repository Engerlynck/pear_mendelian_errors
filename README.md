# Pear mendelian errors script

## Intro
Analysis code for Claessen et al. (2026)
This repo contains a custom-made R script to test mendelian-errors between all individual pairs. 

## Requirements
- R version 3.6.1
- packages: data.table, here, readxl

## Input file
To examine parent-offspring relations, the script uses a dataset containing the 70K dataset from Montanari et al. (2019) combined with the newly genotyped individuals as described in Claessen et al. (2026). The input file is provided in the associated Zenodo repo (DOI: 10.5281/zenodo.21460568).

## Output file
The script has as output a matrix containing the pairwise mendelian-errors between all individual pairs. The output file is provided in the associated Zenodo repo (DOI: 10.5281/zenodo.21460568).

## References
1. Montanari, S., Bianco, L., Allen, B. J., Martínez-García, P. J., Bassil, N. V., Postman, J., Knäbel, M., Kitson, B., Deng, C. H., Chagné, D., Crepeau, M. W., Langley, C. H., Evans, K., Dhingra, A., Troggio, M., & Neale, D. B. (2019). Development of a highly efficient AxiomTM 70 K SNP array for Pyrus and evaluation for high-density mapping and germplasm characterization. BMC Genomics, 20(1), 1–18. https://doi.org/10.1186/s12864-019-5712-3
2. Claessen et al. (2026) - TBC
