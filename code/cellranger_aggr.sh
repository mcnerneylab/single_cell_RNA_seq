#!/bin/bash

### qsub file.name to run from anywhere

#PBS -N aggr

#PBS -S /bin/bash

#PBS -l walltime=16:00:00

#PBS -l nodes=1:ppn=4

#PBS -l mem=32gb

#PBS -o /gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/aggr/aggr.out

#PBS -e /gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/aggr/aggr.err

module load gcc/6.2.0

module load cellranger/3.0.2

cd /gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/aggr

cellranger aggr --id=wl001_ln1_2_comb --csv=/gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/aggr/WL001_ln1_2_combined_library.csv --normalize=mapped

out=/gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/aggr

log=/gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/aggr/aggr.log

date

echo END
