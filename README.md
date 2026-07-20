# Analysis code for Claessen et al. (2026)

## Intro
This repo contains a custom-made R script to test mendelian-errors between all individual pairs. 

## Requirements
- R version 3.6.1
- packages: data.table, here, readxl

## Expected input files
To examine parent-offspring relations, the script uses a dataset containing the 70K dataset from Montanari et al. (2019) combined with the newly genotyped individuals as described in Claessen et al. (2026). The input file is provided in the associated Zenodo repo (DOI: 10.5281/zenodo.21460568).

## Output file
The script has as output a matrix containing the pairwise mendelian-errors between all individual pairs. The output file is provided in the associated Zenodo repo (DOI: 10.5281/zenodo.21460568).
