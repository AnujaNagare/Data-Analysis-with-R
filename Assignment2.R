# getwd()
# 
# setwd('F:/DataScience/R/eda-course-materials/lesson2')
# 
# statesInfo <- read.csv('stateData.csv')
# 
# stateSubset <- subset(statesInfo, state.region ==1)
# head(stateSubset, 2)
# dim(stateSubset)
# 
# stateSubsetBracket <- statesInfo[statesInfo$state.region ==1, ]
# head(stateSubsetBracket,2)
# dim(stateSubsetBracket)

set.seed(124)
schtyp <- sample(0:1, 20, replace = TRUE)
schtyp

is.factor(schtyp)

is.numeric(schtyp)

schtyp.f <- factor(schtyp, labels = c("private", "public"))
schtyp.f

is.factor(schtyp.f)

ses <- c("low", "middle", "low", "low", "low", "low", "middle", "low", "middle",
         "middle", "middle", "middle", "middle", "high", "high", "low", "middle",
         "middle", "low", "high")

is.factor(ses)
is.character(ses)

ses.f.bad.order <- factor(ses)
is.factor(ses.f.bad.order)

levels(ses.f.bad.order)

ses.f <- factor(ses, levels = c("low", "middle", "high"))
is.factor(ses.f)

levels(ses.f)

ses.order <- ordered(ses, levels = c("low", "middle", "high"))
ses

ses.order

is.factor(ses.order)

ses.f[21] <- "very.high"

## Warning: invalid factor level, NA generated

ses.f

ses.f <- factor(ses.f, levels = c(levels(ses.f), "very.high"))
ses.f[21] <- "very.high"
ses.f
  
levels(ses.f)

ses.f.new <- ses.f[ses.f != "very.high"]
ses.f.new

ses.f.new <- factor(ses.f.new)
ses.f.new

levels(ses.f.new)

ses.f <- ses.f.new
read <- c(34, 39, 63, 44, 47, 47, 57, 39, 48, 47, 34, 37, 47, 47, 39, 47,
          47, 50, 28, 60)

# combining all the variables in a data frame
combo <- data.frame(schtyp, schtyp.f, ses, ses.f, read)

table(ses, schtyp)

table(ses.f, schtyp.f)

# library(lattice)
# bwplot(schtyp ~ read | ses, data = combo, layout = c(2, 2))
# 
