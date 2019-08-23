# New Day 1 outline

We need to put together materials for Day 1 to cover the upstream analysis of 
the sequencing data from fastq to count matrix.

A lot of this can be based on Guillermo's materials from the March course.

1. Introductory lecture - already have from previous 3 day course

2. Explanation of FASTQ format  
          - Have one simple slide/picture and then...
          - do this at the terminal as a bit of 'live coding' to introduce them
            to the terminal.  
          ~~- We should clean the fastq, they've come from SRA and they have~~
          ~~added the reads name in the third line after the '+'. Let's remove~~
          ~~this as it isn't typical.~~  
          - printed cheatsheet with common commands  

3. FASTQC - practical
          - some examples of bad QCs, probably as a slide deck 

4. Introduction to alignment - slides - I can modify Guillermo's
          - include an explanation of indexing 

5. Generate Reference index - practical 
          - Will need to do this on just one chromosome, e.g. 22, will need to 
            make a fasta
          - Does HISAT2 take GTF when indexing

6. Alignment with HISAT2 - practical
          - test
          - afterwards explain the BAM format again

7. Quick look with samtools - practical
          - flagstat
          - idxstats

8. QC with Picard - practical
          - CollectAlignmentMetrics
          - CollectRNAseqMetrics
          - how fast are these? should we run on a small bam for demonstration
            purposes and have fulll outputs pre-prepared

9. Multiqc - practical
          - gather the Picard metrics and the fastqc outputs togther
          - an example of a bad coverage plot

10. Counting - we already have this

            


