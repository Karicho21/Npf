#!/bin/bash
#SBATCH --job-name=4145-A5
#SBATCH --partition=Centaurus
#SBATCH --time=01:00:00
#SBATCH --mem=16G

record="record.txt"

OMP_NUM_THREADS=16 ./nbody planet 200 5000000 10000 >> $record

OMP_NUM_THREADS=32 ./nbody planet 200 5000000 10000 >> $record

OMP_NUM_THREADS=16 ./nbody 100 1 10000 100 >> $record

OMP_NUM_THREADS=32 ./nbody 100 1 10000 100 >> $record
