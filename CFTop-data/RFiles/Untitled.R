library(tidyverse)
library(ggplot2)
library(reshape2)

setwd("/Users/juri/Desktop/RFiles/")
pr <-  read.csv("success_rate_change_input_topic.csv", sep=",", header = T)
pr['topic.cutoff'] = NULL
pr['neighbours'] = NULL
pr <- pr %>% rename("success rate@5" = sr.5, "success rate@10" = sr.10)
result <- pr %>% melt(id.vars="inputs", mneasure.var="success rate@5,success rate@10")

plot <- result %>% ggplot(aes(inputs, value, fill=variable)) +
  geom_bar(stat='Identity',position=position_dodge())
plot.labs <- plot + labs(x = "Input topics", y = "Succes Rate")
plot.labs <- plot.labs + guides(fill=guide_legend(title="Legend"))

plot.labs

