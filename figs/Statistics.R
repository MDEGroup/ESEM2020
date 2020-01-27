cr <- read.csv("Dataset_original.csv")
ggplot(cr, aes(x=Commits, y=Forks)) +  geom_point(size=3, aes(color=Pulls)) + scale_y_log10() + scale_x_log10() +
	theme(axis.text.x=element_text(size=20), axis.title=element_text(size=20,face="bold")) +
	theme(axis.text.y=element_text(size=20), axis.title=element_text(size=20,face="bold")) +
	theme(legend.text = element_text(size=15, face="bold")) +  stat_ellipse()

