library(tidyverse)


list.files("additional_scripts", pattern="RNA_metrics", full.n = TRUE) %>% 
  set_names(.) %>% 
  map_dfr(read_tsv, comment="#", n_max = 1, .id="File") %>%
  mutate(Sample=if_else(str_detect(File, "DL"), "Sample A", "Sample B")) %>% 
  filter(Sample=="Sample A") %>% 
  select(Sample, Coding=PCT_CODING_BASES, UTR=PCT_UTR_BASES, Intronic=PCT_INTRONIC_BASES,
         Intergenic=PCT_INTERGENIC_BASES) %>% 
  gather(Location, Percentage, -Sample) %>% 
  mutate(Location=fct_relevel(Location, c("Intergenic", "Intronic", "UTR"))) %>% 
  ggplot(aes(x=Sample, y=Percentage)) +
      geom_col(aes(fill=Location), colour="black") +
      labs(fill="", x="") +
      coord_flip() +
      theme(legend.position="bottom")

ggsave("images/GenomicLocations.svg", width = 10, height=3)


list.files("additional_scripts", pattern="RNA_metrics", full.n = TRUE) %>% 
  set_names(.) %>% 
  map_dfr(read_tsv, skip=10, .id="File") %>%
  mutate(Sample=if_else(str_detect(File, "DL"), "Sample A", "Sample B")) %>% 
  ggplot(aes(x=normalized_position, y=All_Reads.normalized_coverage)) +
      geom_line(aes(colour=Sample)) +
      labs(colour="", x="Normalised Position", y="Normalized Coverage") +
      theme(legend.position="bottom")
  

ggsave("images/TranscriptCoverage.svg", width = 8, height=5)
