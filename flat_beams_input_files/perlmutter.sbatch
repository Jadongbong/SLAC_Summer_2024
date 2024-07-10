#!/bin/bash -l

#SBATCH -t 24:00:00
#SBATCH -N 1
#SBATCH -J gp
#SBATCH -A m4272
#SBATCH -q shared
#SBATCH -C cpu
#SBATCH --mem=100GB
#SBATCH --ntasks-per-node=1
#SBATCH -o guinea-pig.o%j
#SBATCH -e guinea-pig.e%j

EXE=$HOME/bin/guinea 

{ time $EXE PWFA plasma acc.out  > output.txt ; } 2> time.txt
