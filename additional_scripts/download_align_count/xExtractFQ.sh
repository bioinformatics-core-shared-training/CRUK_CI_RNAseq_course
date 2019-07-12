#!/bin/bash

mkdir -p fastq
for sraFile in sra/sra/*.sra; do
 sbatch -e extract_%j.err -o extract_%j.out --mem 8g <<EOF
#!/bin/bash
 echo "Extracting fastq from "${sraFile}
 fastq-dump \
    --origfmt \
    --gzip \
    --outdir fastq \
    ${sraFile}
EOF
done
