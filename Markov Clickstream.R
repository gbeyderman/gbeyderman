install.packages("clickstream")
library(clickstream)
cls <- clickstream::readClickstreams(file = "clkstrm.csv", sep = ",", header = FALSE) #load the data
mc <- clickstream::fitMarkovChain(clickstreamList = cls, order = 2, control = list(optimizer = "quadratic")) #train a Markove Chain
mc # show the model
clickstream::summary(mc) #model summary
clickstream::plot(mc, order = 2, minProbability = 0.09, digits = 1, edge.arrow.size = 0.5, edge.arrow.width = 0.5) #graph the chain 

#Prediction
pattern <- new("Pattern", sequence = c("025","05")) # Create a patern
resultPattern <- clickstream::predict(mc, startPattern = pattern, dist = 1) #Predict the next 1 click
resultPattern #Show the prediction

pattern <- new("Pattern", sequence = c("resova"))
resultPattern <- clickstream::predict(mc, startPattern = pattern, dist = 2) #Predict the next 2 clicks
resultPattern

pattern <- new("Pattern", sequence = c("resova","resovaitemsview5"),  #Modify the pattern with prior purchase probabilities
               absorbingProbabilities = data.frame(Buy = 0.2, Defer = 0.8)) 
resultPattern <- clickstream::predict(mc, startPattern = pattern, dist = 1)
resultPattern