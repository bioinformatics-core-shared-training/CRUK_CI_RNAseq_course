#!/bin/bash

export PATH=/home/bioinformatics/software/subread/subread-1.5.3/bin:${PATH}

cd counts
featureCounts \
      -C \
      -t exon \
      -g gene_id \
      --primary \
      -a Mus_musculus.GRCm38.97.gtf  \
      -o GSE60450_Lactation \
      ../bam/MCL*.bam

sed -i s@../bam/@@g GSE60450_Lactation 

