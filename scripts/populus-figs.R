
library(ggplot2)

populus <- read.csv("../data/populus.csv")
waypoints <- read.csv("../data/waypoints.csv", stringsAsFactors=FALSE)
populus <- merge(populus, waypoints)

ggplot(populus, aes(DBH)) + geom_histogram()
ggsave("../results/size-structure.pdf")

ggplot(populus, aes(lon, DBH)) + geom_point()
