
library(ggplot2)

populus <- read.csv("../data/populus.csv")


ggplot(populus, aes(DBH)) + geom_histogram()
ggsave("../results/size-structure.pdf")
