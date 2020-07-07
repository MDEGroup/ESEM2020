library(tidyverse)
library(ggplot2)
setwd("/Users/juri/Desktop/RFiles/raw/Results_k5_n25")
pr_r1 <-  read.csv("PRC_Round1", sep="\t", header = F)
pr_r2 <-  read.csv("PRC_Round2", sep="\t", header = F)
pr_r3 <-  read.csv("PRC_Round3", sep="\t", header = F)
pr_r4 <-  read.csv("PRC_Round4", sep="\t", header = F)
pr_r5 <-  read.csv("PRC_Round5", sep="\t", header = F)
pr_r6 <-  read.csv("PRC_Round6", sep="\t", header = F)
pr_r7 <-  read.csv("PRC_Round7", sep="\t", header = F)
pr_r8 <-  read.csv("PRC_Round8", sep="\t", header = F)
pr_r9 <-  read.csv("PRC_Round9", sep="\t", header = F)
pr_r10 <-  read.csv("PRC_Round10", sep="\t", header = F)
pr_tot1 <- rbind(pr_r1, pr_r2, pr_r3, pr_r4, pr_r5, pr_r6, pr_r7, pr_r8, pr_r9, pr_r10)
pr_tot1 <- pr_tot1 %>% group_by(V1) %>% summarise(meanPR = mean(V2), meanREC = mean(V3)) %>% rename(k = V1)
pr_tot1['config'] = 'k5_n25'

setwd("/Users/juri/Desktop/RFiles/raw/Results_k10_n25")
pr_r1 <-  read.csv("PRC_Round1", sep="\t", header = F)
pr_r2 <-  read.csv("PRC_Round2", sep="\t", header = F)
pr_r3 <-  read.csv("PRC_Round3", sep="\t", header = F)
pr_r4 <-  read.csv("PRC_Round4", sep="\t", header = F)
pr_r5 <-  read.csv("PRC_Round5", sep="\t", header = F)
pr_r6 <-  read.csv("PRC_Round6", sep="\t", header = F)
pr_r7 <-  read.csv("PRC_Round7", sep="\t", header = F)
pr_r8 <-  read.csv("PRC_Round8", sep="\t", header = F)
pr_r9 <-  read.csv("PRC_Round9", sep="\t", header = F)
pr_r10 <-  read.csv("PRC_Round10", sep="\t", header = F)
pr_tot2 <- rbind(pr_r1, pr_r2, pr_r3, pr_r4, pr_r5, pr_r6, pr_r7, pr_r8, pr_r9, pr_r10)
pr_tot2 <- pr_tot2 %>% group_by(V1) %>% summarise(meanPR = mean(V2), meanREC = mean(V3)) %>% rename(k = V1)
pr_tot2['config'] = 'k10_n25'

setwd("/Users/juri/Desktop/RFiles/raw/Results_k15_n25")
pr_r1 <-  read.csv("PRC_Round1", sep="\t", header = F)
pr_r2 <-  read.csv("PRC_Round2", sep="\t", header = F)
pr_r3 <-  read.csv("PRC_Round3", sep="\t", header = F)
pr_r4 <-  read.csv("PRC_Round4", sep="\t", header = F)
pr_r5 <-  read.csv("PRC_Round5", sep="\t", header = F)
pr_r6 <-  read.csv("PRC_Round6", sep="\t", header = F)
pr_r7 <-  read.csv("PRC_Round7", sep="\t", header = F)
pr_r8 <-  read.csv("PRC_Round8", sep="\t", header = F)
pr_r9 <-  read.csv("PRC_Round9", sep="\t", header = F)
pr_r10 <-  read.csv("PRC_Round10", sep="\t", header = F)
pr_tot3 <- rbind(pr_r1, pr_r2, pr_r3, pr_r4, pr_r5, pr_r6, pr_r7, pr_r8, pr_r9, pr_r10)
pr_tot3 <- pr_tot3 %>% group_by(V1) %>% summarise(meanPR = mean(V2), meanREC = mean(V3)) %>% rename(k = V1)
pr_tot3['config'] = 'k15_n25'

setwd("/Users/juri/Desktop/RFiles/raw/Results_k20_n25")
pr_r1 <-  read.csv("PRC_Round1", sep="\t", header = F)
pr_r2 <-  read.csv("PRC_Round2", sep="\t", header = F)
pr_r3 <-  read.csv("PRC_Round3", sep="\t", header = F)
pr_r4 <-  read.csv("PRC_Round4", sep="\t", header = F)
pr_r5 <-  read.csv("PRC_Round5", sep="\t", header = F)
pr_r6 <-  read.csv("PRC_Round6", sep="\t", header = F)
pr_r7 <-  read.csv("PRC_Round7", sep="\t", header = F)
pr_r8 <-  read.csv("PRC_Round8", sep="\t", header = F)
pr_r9 <-  read.csv("PRC_Round9", sep="\t", header = F)
pr_r10 <-  read.csv("PRC_Round10", sep="\t", header = F)
pr_tot4 <- rbind(pr_r1, pr_r2, pr_r3, pr_r4, pr_r5, pr_r6, pr_r7, pr_r8, pr_r9, pr_r10)
pr_tot4 <- pr_tot4 %>% group_by(V1) %>% summarise(meanPR = mean(V2), meanREC = mean(V3)) %>% rename(k = V1)
pr_tot4['config'] = 'k20_n25'

pr_tot <- rbind( pr_tot1, pr_tot2, pr_tot3, pr_tot4)
p <- pr_tot %>% ggplot(aes(meanPR,meanREC)) + geom_point(aes(shape=config, colour = config),size = 3) + geom_line(aes(colour = config),size = 1) + labs(x = "Precision", y="Recall")
p
p + theme(
  axis.text.x = element_text(size=20),
  axis.text.y = element_text(size=20),
  axis.title.x = element_text(size=25),
  axis.title.y = element_text(size=25),
  legend.text = element_text(size = 20)
)

