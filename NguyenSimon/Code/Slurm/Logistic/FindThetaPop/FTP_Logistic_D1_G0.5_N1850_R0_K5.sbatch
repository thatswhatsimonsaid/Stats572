#!/bin/bash
#SBATCH --job-name FTP_Logistic_D1_G0.5_N1850_R0_K5
#SBATCH --partition short
#SBATCH --ntasks 1
#SBATCH --time 12:00:00
#SBATCH --mem-per-cpu=3000
#SBATCH -o ClusterMessages/out/myscript_FTP_Logistic_D1_G0.5_N1850_R0_K5_%j.out
#SBATCH -e ClusterMessages/error/myscript_FTP_Logistic_D1_G0.5_N1850_R0_K5_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=simondn@uw.edu

cd ~/Stats572
module load R
Rscript Code/FindThetaPop.R \
    --Delta 1 \
    --Gamma 0.5 \
    --N 1850 \
    --Rho 0 \
    --K 5 \
    --TypeSetting 'Logistic' \
    --Output data/Logistic/EstimatedThetaPop/D1_G0.5_N1850_R0_K5.csv \
