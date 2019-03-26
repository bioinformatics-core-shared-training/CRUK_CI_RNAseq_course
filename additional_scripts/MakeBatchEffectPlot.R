library(tidyverse)
library(ggdendro)


dat <- read_tsv("../Course_Materials/data/GSE60450_Lactation.featureCounts",
                comment="#") %>% 
    gather("Sample", "Count", contains("MCL1")) %>% 
    group_by(Geneid) %>% 
    mutate(Var=var(Count)) %>% 
    ungroup() %>% 
    select(Geneid, Sample, Count, Var) %>% 
    spread("Sample", "Count") %>% 
    top_n(1000, Var) %>% 
    select(contains("MCL1")) %>%
    set_names(str_c("Sample_", 1:12)) %>% 
    mutate_all(`+`, y=1) %>% 
    mutate_all(log2) %>% 
    as.matrix()
        
dendro.dat <- t(dat) %>% 
    dist(method = "euclidean") %>%
    hclust() %>%
    as.dendrogram() %>%
    dendro_data()
    
pDat <- tibble(SampleName=str_c("Sample_", 1:12)) %>% 
    mutate(RepName=str_c("Grp", rep(c("A", "B"), each=6), " Rep ", 1:6)) %>% 
    mutate(Group=str_c("Grp", rep(c("A", "B"), each=6))) %>% 
    mutate(RNA=rep(c("12th March", "19th March"), each=6))

labelDat <- dendro.dat$labels %>%
    mutate(SampleName = as.character(label)) %>% 
    left_join(pDat)
axisBreaks <- pretty(dendro.dat$segments$yend)[-1] %>% head(-1)
    
hj <- 0
ny <- 1
ang <- 0

ggplot(dendro.dat$segment) +
    geom_segment(aes(x = x, y = y, xend = xend, yend = yend)) +
    geom_label(
        data = labelDat,
        aes(x = x, 
            y = y, 
            label = RepName, 
            fill = Group),
        hjust = hj, nudge_y = ny, angle = ang
    ) +
    geom_label(
        data = labelDat,
        aes(x = x, 
            y = y - 25, 
            label = RNA, 
            fill = RNA),
        hjust = hj, nudge_y = ny, angle = ang
    ) + 
    geom_text(x=13, y=6, label="Sample",
        hjust = hj, nudge_y = ny, angle = ang
    ) + 
    geom_text(x=13, y=26, label="RNA Extraction",
              hjust = hj, nudge_y = ny, angle = ang
    ) + 
    guides(fill = FALSE) +
    scale_fill_manual(values = c("#7fc97f", "#beaed4", "#fdc086", "#ffff99")) +
    labs(x = NULL, y = "Distance") +
    scale_y_reverse(expand = c(0.2, 0), breaks = axisBreaks) +
    coord_flip() +
    theme(
        axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        plot.title = element_text(hjust = 0.5),
        panel.background = element_blank()
    ) +
    expand_limits(x=c(0, 14))
ggsave("../images/BatchEffect.svg", width=10, height=5)


    