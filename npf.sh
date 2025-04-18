#!/bin/bash
#SBATCH --job-name=4145-A1
#SBATCH --partition=Centaurus
#SBATCH --time=01:00:00
#SBATCH --mem=16G

OMP_NUM_THREADS=4 ./nbody planet 200 5000000 10000

OMP_NUM_THREADS=16 ./nbody planet 200 5000000 10000

OMP_NUM_THREADS=4 ./nbody 100 1 10000 100

OMP_NUM_THREADS=16 ./nbody 100 1 10000 100
