# Introduction to RNA-seq data analysis 
### 27th - 29th March 2019
#### Bioinformatics Training Room, Craik-Marshall Building, Downing Site, University of Cambridge

![](images/CRUK_Cambridge_Major Centre logo.jpg)


## Outline

In this workshop, you will be learning how to analyse RNA-seq count data, using R. This will include reading the data into R, quality control and performing differential expression analysis and gene set testing, with a focus on the DESeq2 analysis workflow. You will learn how to generate common plots for analysis and visualisation of gene expression data, such as boxplots and heatmaps. 

This workshop is aimed at biologists interested in learning how to perform differential expression analysis of RNA-seq data when reference genomes are available. 

## Etherpad

There is a [course Etherpad](https://etherpad.wikimedia.org/p/RNAseq_UoC_March2019). Please post questions here and we will answer them as soon as we can (Or if you can answer someone elses question do so!). The trainers may also post useful code snippets here for you.

## Timetable

_Day 1_

9:30 - 10:15 - [Introduction to RNAseq Methods](slides/Day1_Lecture.pptx) - Ashley Sawle

10:15 - 11:00 - [Introduction to Alignment and Quantification](slides/Day1_Lecture.pptx) - Guillermo Parada Gonzalez

11:00 - 12:30 [Practical: QC and Alignment with HISAT2](slides/DAY_1.pdf)
- [Dropbox with full materials for Part 1 of the course including data files](https://www.dropbox.com/sh/rb03yhfqixvbcn5/AADqyJXECPbcZdyIUXw6yQEia?dl=0)

12:30 - 13:30 Lunch

13:30 - 17:30 [Practical: Transcriptome assembly and quantificatioin with stringtie](slides/DAY_1.pdf#page=11)
- [Solutions for Day 1 practical](slides/DAY1answers.txt)

_Day 2_

9:30 - 10:30 [Normalisation; Quasi-mapping and quantification with Salmon](slides/Day2_Lecture.pptx) - Guillermo Parada Gonzalez 

10:30 - 12:30 [Practical: Mapping and quantification with Star; Quantification with Salmon](slides/DAY_2.pdf)
- [Solutions for Day 2 practical](slides/DAY2answers.txt)

12:30 - 13:30 - Lunch

13:30 - 14:00 - [Introduction to RNAseq Analysis in R](html/00_Introduction_to_RNAseq_Analysis.html) - Ashley Sawle

14:00 - 14:45 - [RNA-seq Pre-processing](html/02_Preprocessing_Data.nb.html) - Ashley Sawle  
- [practical solutions](Course_Materials/solutions/02_Preprocessing_Data.Solutions.nb.html)

14:45 - 17:30 - [Linear Model and Statistics for Differential Expression](slides/LinearModels.pdf) - Dominique-Laurent Couturier
 - [Linear models practical sessions](html/03_Linear_Models.nb.html)
 
_Day 3_

9:30 - 12:00 - [Differential Expression for RNA-seq](html/04_DE_analysis_with_DESeq2.nb.html) - Stephane Ballereau
- [practical solutions](Course_Materials/solutions/04_DE_analysis.Solutions.nb.html)

12:00 - 13:00 Lunch

13:00 - 15:30 [Annotation and Visualisation of RNA-seq results](html/05_Annotation_and_Visualisation.nb.html) - Abbi Edwards  
- [practical solutions](Course_Materials/solutions/05_Annotation_and_Visualisation.Solutions.nb.html)

15:30 - 17:30 [Gene-set testing](html/06_Gene_set_testing.nb.html) - Ashley Sawle  
- [practical solutions](Course_Materials/solutions/06_Gene_set_testing.Solutions.nb.html)

> ## Prerequisites
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
repository](https://github.com/bioinformatics-core-shared-training/RNAseq_March_2019)

### Supplementary lessons

Introductory R materials:

- [R Crash Course](https://bioinformatics-core-shared-training.github.io/r-crash-course/)

Additional RNAseq materials:

- [Downloading files from SRA and aligning](Supplementary_Materials/S1_Getting_raw_reads_from_SRA.html)
- [Alignment and Counting](Supplementary_Materials/S2_Read_Counts_with_Subread.html)
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
