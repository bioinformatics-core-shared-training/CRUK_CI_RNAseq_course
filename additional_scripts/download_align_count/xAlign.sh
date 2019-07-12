#!/bin/bash

mkdir -p bam
refDir=/mnt/scratcha/bioinformatics/reference_data/reference_genomes
hisatIndex=${refDir}/mus_musculus/GRCm38/hisat2-2.1.0/mmu.GRCm38
for fq in fastq/*gz; do
    sam=`basename ${fq} .fastq.gz` 
    bam=`grep ${sam} targets2.txt | cut -f 2`
    cmd="sbatch sAlignWithHISAT2.sh \
        -i ${hisatIndex} \
        -f ${fq} \
        -r SM:${sam} \
        -o bam/${bam}.bam"
    #echo ${cmd}
    eval ${cmd}
done
