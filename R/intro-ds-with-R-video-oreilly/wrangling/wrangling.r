# read data from csv file
raw <- read.csv("data/pew.csv", check.names = FALSE)

# (1) reshape rectangular data
# reshape data; vars: religion, income level, count
library(reshape2)
tidy <- melt(raw, id = "religion")
names(tidy) <- c("religion", "income", "count")

# read and reshape txt data (with NAs)
raw <- read.delim("data/weather.txt", check.names = FALSE, na.strings = ".")
raw <- melt(raw, id = c("year", "month", "element"), na.rm = TRUE)
names(raw) <- c("year", "month", "element", "day", "temperature")
raw <- raw[, c("year", "month", "day", "element", "temperature")]

# (2) reshape tmax/tmin with dcast
tidy <- dcast(raw, year + month + day ~ element,
              value.var = "temperature")

