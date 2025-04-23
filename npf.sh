#!/bin/bash
#SBATCH --job-name=4145-A5
#SBATCH --partition=Centaurus
#SBATCH --time=01:00:00
#SBATCH --mem=32G

record="record.txt"

OMP_NUM_THREADS=4 ./nbody planet 200 5000000 10000 >> $record

OMP_NUM_THREADS=4 ./nbody 100 1 10000 100 >> $record

OMP_NUM_THREADS=4 ./nbody 1000 1 10000 100 >> $record
