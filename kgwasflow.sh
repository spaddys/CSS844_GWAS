#!/bin/bash
#SBATCH --job-name=kgwas
#SBATCH --output=kgwas.log
#SBATCH --mail-user=creachma@msu.edu
#SBATCH --mail-type=START,FAIL,END
#SBATCH --time=50:00:00
#SBATCH --mem-per-cpu=15000M
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --partition=long

module load conda

conda activate /mnt/ufs18/rs-034/VanBuren_Lab/02_users/Maddy_Creach/CSS_844/envs/kgwasflow

kgwasflow run -t 16 --rerun-incomplete
