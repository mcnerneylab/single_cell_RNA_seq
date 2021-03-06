
### KON1(Renilla). for cellranger count, we have to run each sample seperately

#!/bin/bash

#PBS -N count_KON1

#PBS -S /bin/bash

#PBS -l walltime=24:00:00

#PBS -l nodes=1:ppn=4

#PBS -l mem=16gb

#PBS -o /gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/KON1.out

#PBS -e /gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/KON1.err

date

module load gcc/6.2.0

module load cellranger/3.0.2

cellranger count --id=kon1 --transcriptome=/gpfs/data/mcnerney-lab/liuweihan/cellranger_ref_genomes/mm10genome_chrM \

--fastqs=/gpfs/data/mcnerney-lab/liuweihan/scRNA/raw_data_ln1/H77TNBBXY_5/KON-1,/gpfs/data/mcnerney-lab/liuweihan/scRNA/raw_data_ln2/KON-1  --sample=KON-1 --expect-cells=1000

out=/gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out

log=/gpfs/data/mcnerney-lab/liuweihan/scRNA/combined_ln1_2/count_out/KON1.log

date

echo END
