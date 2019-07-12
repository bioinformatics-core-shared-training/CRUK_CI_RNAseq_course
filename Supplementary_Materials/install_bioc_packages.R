if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(c("limma", 
         "edgeR", 
         "gplots", 
         "org.Mm.eg.db", 
         "RColorBrewer", 
         "Glimma",
         "GenomicFeatures",
         "ggplot2",
         "SRAdb",
         "Rsubread",
         "BiasedUrn",
         "TxDb.Mmusculus.UCSC.mm10.knownGene",
         "GEOquery",
         "goseq",
         "fgsea",
          "ggbio"))
