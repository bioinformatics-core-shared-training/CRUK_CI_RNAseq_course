# Introduction to RNA-seq data analysis 
### 3rd - 5th September 2018
#### Bioinformatics Training Room, Craik-Marshall Building, Downing Site, University of Cambridge

![](images/CRUK_Cambridge_Major Centre logo.jpg)


## Outline

In this workshop, you will be learning how to analyse RNA-seq count data, using R. This will include reading the data into R, quality control and performing differential expression analysis and gene set testing, with a focus on the DESeq2 analysis workflow. You will learn how to generate common plots for analysis and visualisation of gene expression data, such as boxplots and heatmaps. 

This workshop is aimed at biologists interested in learning how to perform differential expression analysis of RNA-seq data when reference genomes are available. 

## Etherpad

There is a [course Etherpad](https://tinyurl.com/RNAseq092018). Please post questions here and we will answer them as soon as we can (Or if you can answer someone elses question do so!). The trainers may also post useful code snippets here for you.

## Timetable (for Part 2 )

_Day 2 (p.m.)_

12:30 - 13:30 - Lunch

13:30 - 14:00 - [Introduction to RNAseq Analysis in R](html/00_Introduction_to_RNAseq_Analysis.html) - Ashley Sawle

14:00 - 14:45 - [RNA-seq Pre-processing](html/02_Preprocessing_Data.nb.html) - Ashley Sawle  
    + [practical solutions](Course_Materials/solutions/02_Preprocessing_Data.Solutions.nb.html)

14:45 - 17:30 - [Linear Model and Statistics for Differential Expression](slides/LinearModels.pdf) - Oscar Rueda

_Day 3_

9:30 - 12:00 - [Differential Expression for RNA-seq](html/04_DE_analysis_with_DESeq2.nb.html) - Ashley Sawle  
    + [practical solutions](Course_Materials/solutions/04_DE_analysis.Solutions.nb.html)

12:00 - 13:00 Lunch

13:00 - 15:30 [Annotation and Visualisation of RNA-seq results](html/05_Annotation_and_Visualisation.nb.html) - Abbi Edwards  
    + [practical solutions](Course_Materials/solutions/05_Annotation_and_Visualisation.Solutions.nb.html)

15:30 - 17:30 [Gene-set testing](html/06_Gene_set_testing.nb.html) - Stephane Ballereau  
    + [practical solutions](Course_Materials/solutions/06_Gene_set_testing.Solutions.nb.html)

> ## Prerequisites {.prereq}
>
> __**Some basic R knowledge is assumed (and is essential). Without it, you will struggle on this course.**__ 
> If you are not familiar with the R statistical programming language we
> strongly encourage you to work through an introductory R course before
> attempting these materials.
> We recommend reading our [R crash course](https://bioinformatics-core-shared-training.github.io/r-crash-course/)
> before attending, which should take around 1 hour
>

## Running these materials on your own computer.
- You can of course start from a base R & Rstudio setup but you may find it easier to pull a Docker
container image onto your Linux, Mac or Windows machine (You will need to install [Docker](https://www.docker.com/community-edition) and for Win & Mac we also recommend the [Kitematic](https://github.com/docker/kitematic ) graphical interface to Docker. The image is pullable using 'docker pull mfernandes61/crukci_rnaseq_course'
or searching for 'mfernandes61/crukci_rnaseq_course' in Kitematic.

## Source Materials for Practicals

The all of the lecture slides and other source materials, including R code and 
practical solutions, can be found in the course's [Github 
repository](https://github.com/bioinformatics-core-shared-training/RNAseq_September_2018)

### Supplementary lessons

Introductory R materials:

- [R Crash Course](https://bioinformatics-core-shared-training.github.io/r-crash-course/)

Additional RNAseq materials:

- [Downloading files from SRA and aligning](Supplementary_Materials/S1_Getting_raw_reads_from_SRA.nb.html)
- [Alignment and Counting](Supplementary_Materials/S2_Read_Counts_with_Subread.html)
    + [source file](Supplementary_Materials/S2_Read_Counts_with_Subread.Rmd)
- [Additional annotation and plotting](Supplementary_Materials/S3_Annotation_and_Visualisation.html)
    + [source file](Supplementary_Materials/S3_Annotation_and_Visualisation.Rmd)

Data: Example Mouse mammary data (fastq files): 
	[https://figshare.com/s/f5d63d8c265a05618137](https://figshare.com/s/f5d63d8c265a05618137)

### Additional resources

[Bioconductor help](https://www.bioconductor.org/help/)  
[Biostars](https://www.biostars.org/)  
[SEQanswers](http://seqanswers.com/)  

## Acknowledgements

This course is based on the course [RNAseq analysis in R](http://combine-australia.github.io/2016-05-11-RNAseq/) prepared by [Combine Australia](https://combine.org.au/) and delivered on May 11/12th 2016 in Carlton. We are extremely grateful to the authors for making their materials available; Maria Doyle, Belinda Phipson, Matt Ritchie, Anna Trigos, Harriet Dashnow, Charity Law.

![](images/combine_banner_small.png)
