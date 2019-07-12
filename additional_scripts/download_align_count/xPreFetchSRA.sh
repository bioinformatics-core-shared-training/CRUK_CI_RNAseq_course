#!/bin/bash

for i in `cat SRA_ids.txt`; do
    sbatch -o fetch_%j.out -e fetch_%j.err --mem 4g <<EOF
#!/bin/bash
prefetch ${i} 
EOF
done
