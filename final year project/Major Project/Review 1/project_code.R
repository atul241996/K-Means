setwd("C:/Users/sahil/Desktop/Stuff/Major Project/Review 1")

library("utils")

aapl <- read.csv(file='AAPL.csv', header=T, sep=',')

view(aapl)

data <- aapl
str(data)

data$Date

as.numeric(data$Date)
gsub(',','',data$Date)
gsub('[^a-zA-Z0-9.]','',data$Date)

data$Date <- as.numeric(data$Date)
str(data$Date)

data$Open

as.numeric(data$Open)
gsub(',','',data$Open)
gsub('[^a-zA-Z0-9.]','',data$Open)

data$Volume <- as.numeric(data$Open)
str(data$Open)

data$High

as.numeric(data$High)
gsub(',','',data$High)
gsub('[^a-zA-Z0-9.]','',data$High)

data$High <- as.numeric(data$High)
str(data$High)

data$Low

as.numeric(data$Low)
gsub(',','',data$Low)
gsub('[^a-zA-Z0-9.]','',data$Low)

data$Low <- as.numeric(data$Low)
str(data$Low)

data$Close

as.numeric(data$Close)
gsub(',','',data$Close)
gsub('[^a-zA-Z0-9.]','',data$Close)

data$Close <- as.numeric(data$Close)
str(data$Close)

data$AdjClose

as.numeric(data$AdjClose)
gsub(',','',data$AdjClose)
gsub('[^a-zA-Z0-9.]','',data$AdjClose)

data$AdjClose <- as.numeric(data$AdjClose)
str(data$AdjClose)

data$Volume

as.numeric(data$Volume)
gsub(',','',data$Volume)
gsub('[^a-zA-Z0-9.]','',data$Volume)

clean <- function(ttt){
  as.numeric(gsub('[^a-zA-Z0-9.]','',ttt))
   }

clean(data$Date)
clean(data$Open)
clean(data$High)
clean(data$Low)
clean(data$Close)
clean(data$AdjClose)
clean(data$Volume)

data[] <- sapply(data,clean)
str(data)



