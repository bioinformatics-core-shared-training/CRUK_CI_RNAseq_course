# biomaRt package for generalised annotation:
# https://www.bioconductor.org/packages/devel/bioc/html/biomaRt.html
# Documentation: 
# https://www.bioconductor.org/packages/devel/bioc/vignettes/biomaRt/inst/doc/biomaRt.html

# install the package (only once)
# source("https://bioconductor.org/biocLite.R")
# biocLite("biomaRt")

# load the library
library(biomaRt)

## set up connection to ensembl database
ensembl=useMart("ensembl")

# list the available datasets (species)
listDatasets(ensembl)

# specify a data set to use
ensembl = useDataset("ecaballus_gene_ensembl",
                     mart=ensembl)

#################
# set up query ##
#################

# check the available "attributes" - things you can retreive
attributes = listAttributes(ensembl)
attributes[1:5,]

# check the available "filters" - things you can filter for
filters = listFilters(ensembl)
filters[1:5,]
filters[grep("ensembl", filters$name),]

# create a vector of "values" to filter for - this time using ensembl ids
some_gene_ids <- c("ENSECAG00000017758", 	"ENSECAG00000022059")

# a general example

annotation_table <- getBM(attributes=c('ensembl_gene_id', 
                                       'entrezgene',
                                       'external_gene_name'), 
                          filters = 'ensembl_gene_id', 
                          values = some_gene_ids, 
                          mart = ensembl)
annotation_table
