#!/bin/bash
#SBATCH --job-name FTP_Logistic_D0_G0.5_N2000_R0.1_K5
#SBATCH --partition short
#SBATCH --ntasks 1
#SBATCH --time 12:00:00
#SBATCH --mem-per-cpu=3000
#SBATCH -o ClusterMessages/out/myscript_FTP_Logistic_D0_G0.5_N2000_R0.1_K5_%j.out
#SBATCH -e ClusterMessages/error/myscript_FTP_Logistic_D0_G0.5_N2000_R0.1_K5_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=simondn@uw.edu

cd ~/Stats572
module load R
Rscript Code/FindThetaPop.R \
    --Delta 0 \
    --Gamma 0.5 \
    --N 2000 \
    --Rho 0.1 \
    --K 5 \
    --TypeSetting 'Logistic' \
    --Output data/Logistic/EstimatedThetaPop/D0_G0.5_N2000_R0.1_K5.csv \
