#!/bin/bash
#SBATCH --job-name Sim_Linear_D1_G0_N950_R0_K1
#SBATCH --partition medium
#SBATCH --ntasks 1
#SBATCH --time 7-00:00:00
#SBATCH --mem-per-cpu=6000
#SBATCH -o ClusterMessages/out/myscript_Sim_Linear_D1_G0_N950_R0_K1_%j.out
#SBATCH -e ClusterMessages/error/myscript_Sim_Linear_D1_G0_N950_R0_K1_%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=simondn@uw.edu

cd ~/Stats572
module load R
Rscript Code/RunSimulationStudy.R \
    --Delta 1 \
    --Rho 0 \
    --N 950 \
    --Gamma 0 \
    --K 1 \
    --TypeSetting 'Linear' \
    --Output Results/Linear/SimulationRDS/sim_D1_G0_N950_R0_K1.rds \
