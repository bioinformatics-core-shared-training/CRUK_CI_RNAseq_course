# Introduction to RNA-seq data analysis 
### 2nd - 4th September 2019
#### Bioinformatics Training Room, Craik-Marshall Building, Downing Site, University of Cambridge

![](images/CRUK_Cambridge_Major Centre logo.jpg)


## Outline

In this workshop, you will be learning how to analyse RNA-seq data.  This will
include read alignment, quality control, quantification against a reference,
reading the count data into R, performing differential expression analysis, and
gene set testing, with a focus on the DESeq2 analysis workflow. You will learn
how to generate common plots for analysis and visualisation of gene expression
data, such as boxplots and heatmaps. 

This workshop is aimed at biologists interested in learning how to perform
differential expression analysis of RNA-seq data. 

## Etherpad

There is a [course
Etherpad](https://etherpad.wikimedia.org/p/RNAseq_UoC_September2019). Please post
questions here and we will answer them as soon as we can (or if you can answer
someone elses question do so!). The trainers may also post useful code snippets
here for you.

## Instructors

* Stephane Ballereau - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Dominique-Laurent Couturier - Bioinformatics Core, Cancer Research UK Cambridge Institute 
* Abbi Edwards - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Karsten Bach - Marioni Group, Cancer Research UK Cambridge Institute
* Ashley D Sawle - Bioinformatics Core, Cancer Research UK Cambridge Institute

## Timetable

_Day 1_

9:30 - 10:00 - [Introduction to RNAseq
Methods](html/A_Introduction_to_RNAseq_Methods.html) - Ashley Sawle

10:00 - 11:30 Raw read file format and QC - Abbi Edwards  
    - [Introductory slides](html/B_FastQC.html)  
    - [Practical](html/B_FastQC_practical.html)  
    - [Practical solutions](html/B_FastQC_practical.Solutions.html)  

11:30 - 12:30 Short read alignment with HISAT2 - Ashley Sawle  
    - [Introductory slides](html/C_Alignment_with_HISAT2.html)  
    - [Practical](html/C_Alignment_with_HISAT2_practical.html)  
    - [Practical solutions](html/C_Alignment_with_HISAT2_practical.Solutions.html)  

12:30 - 13:30 Lunch

13:30 - 15:00 Short read alignment with HISAT2 _continued_

15:00 - 16:30 QC of alignment - Ashley Sawle  
    - [Introductory slides](html/D_QC_of_aligned_reads.html)  
    - [Practical](html/D_QC_of_aligned_reads_practical.html)  
    - [Practical solutions](html/D_QC_of_aligned_reads_practical.Solutions.html)  

16:30 - 17:30 Quantification with SubRead - Abbi Edwards
    - [Introductory slides](html/E_Read_Counts_with_Subread.html)  
    - [Practical](html/E_Read_Counts_with_Subread.practical.html)  
    - [Practical solutions](html/E_Read_Counts_with_Subread.practical.Solutions.html)  

_Day 2_

9:30 - 10:00  [Introduction to RNAseq Analysis in R](html/01_Introduction_to_RNAseq_Analysis.html)
 - Ashley Sawle

10:00 - 12:30 - [RNA-seq Pre-processing](html/02_Preprocessing_Data.html) -
Stephane Ballereau  
    - [Practical solutions](html/02_Preprocessing_Data.Solutions.html)  

13:30 - 17:00 - [Linear Model and Statistics for Differential
Expression](slides/StatisticalModels-20190328.pdf) - Dominique-Laurent  
Couturier  
    - [Statistical models practical sessions] (Course_Materials/03-StatisticalModels.Rmd)  
    - [Dataset](Course_Materials/data/03-microarrays.csv)
 
_Day 3_

9:30 - 12:00 - [Differential Expression for
RNA-seq](html/04_DE_analysis_with_DESeq2.html) - Ashley Sawle   
    - [practical solutions](html/04_DE_analysis.Solutions.html)

12:00 - 13:00 Lunch

13:00 - 16:00 [Annotation and Visualisation of RNA-seq
results](html/05_Annotation_and_Visualisation.html) - Abbi Edwards  
    - [practical 
solutions](html/05_Annotation_and_Visualisation.Solutions.html)

16:00 - 17:30 [Gene-set testing](html/06_Gene_set_testing.html) - Ashley Sawle  
    - [practical solutions](html/06_Gene_set_testing.Solutions.html)

> ## Prerequisites
>
> __**Some basic experience of using a UNIX/LINUX command line is assumed**__
> 
> __**Some basic R knowledge is assumed (and is essential). Without it, you
> will struggle on this course.**__ 
> If you are not familiar with the R statistical programming language we
> strongly encourage you to work through an introductory R course before
> attempting these materials.
> We recommend reading our [R crash 
course](https://bioinformatics-core-shared-training.github.io/r-crash-course/)
> before attending, which should take around 1 hour
>

## Source Materials for Practicals

The all of the lecture slides and other source materials, including R code and 
practical solutions, can be found in the course's [Github 
repository](https://github.com/bioinformatics-core-shared-training/RNAseq_September_2019)

### Supplementary lessons

Introductory R materials:

- [R Crash Course](https://bioinformatics-core-shared-training.github.io/r-crash-course/)

Additional RNAseq materials:

- [Downloading files from SRA and aligning](Supplementary_Materials/S1_Getting_raw_reads_from_SRA.html)
- [Additional annotation and plotting](Supplementary_Materials/S3_Annotation_and_Visualisation.html)

Data: Example Mouse mammary data (fastq files): 
	[https://figshare.com/s/f5d63d8c265a05618137](https://figshare.com/s/f5d63d8c265a05618137)

### Additional resources

[Bioconductor help](https://www.bioconductor.org/help/)  
[Biostars](https://www.biostars.org/)  
[SEQanswers](http://seqanswers.com/)  

## Acknowledgements

This course is based on the course [RNAseq analysis in R](http://combine-australia.github.io/2016-05-11-RNAseq/) prepared by [Combine Australia](https://combine.org.au/) and delivered on May 11/12th 2016 in Carlton. We are extremely grateful to the authors for making their materials available; Maria Doyle, Belinda Phipson, Matt Ritchie, Anna Trigos, Harriet Dashnow, Charity Law.

![](images/combine_banner_small.png)
