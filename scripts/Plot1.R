setwd("C:/Users/Dana/Desktop/Projects/coursera")

# set working directory (change this to fit your needs)
setwd('~/coursera/GitHub/Exploratory-Data-Analysis')

# make sure the plots folder exists
if (!file.exists('plots')) {
  dir.create('plots')
}

# load data
source('scripts/get_and_clean_data.R')

# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(power.consumption$GlobalActivePower,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()