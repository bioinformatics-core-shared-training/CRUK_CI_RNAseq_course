FROM bioconductor/release_base
MAINTAINER Mark Dunning<mark.dunning@cruk.cam.ac.uk>
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update 
RUN apt-get install --fix-missing -y git
###Get repository of the course. Install data and R packages
#RUN apt-get install -y sra-toolkit
RUN mkdir -p /home/participant/
RUN git clone https://github.com/bioinformatics-core-shared-training/RNAseq-R /home/participant/Course_Materials
RUN R -f /home/participant/Course_Materials/install_bioc_packages.R
WORKDIR /tmp
RUN wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.3.zip -P /tmp
RUN unzip fastqc_v0.11.3.zip
RUN sudo chmod 755 FastQC/fastqc
RUN ln -s $(pwd)/FastQC/fastqc /usr/bin/fastqc
RUN apt-get install -y bowtie2 samtools
## installing latest version of SRA toolkit
RUN wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.8.1-3/sratoolkit.2.8.1-3-ubuntu64.tar.gz
RUN gunzip sratoolkit.2.8.1-3-ubuntu64.tar.gz
RUN tar xvf sratoolkit.2.8.1-3-ubuntu64.tar
RUN ln -s /tmp/sratoolkit.2.8.1-3-ubuntu64/bin/* /usr/bin/
WORKDIR /home/rstudio
