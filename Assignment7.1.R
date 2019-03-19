#1. Write a program to create histograms for all columns
windows()
par(mfrow=c(3,4))
for ( i in 1:length(mtcars)){
  hist(mtcars[,i],main=paste("Histogram of -",colnames(mtcars)[i]),xlab=colnames(mtcars)[i])
}


#2. Check the probability distribution of all variables in mtcars.
windows()
par(mfrow=c(3,4))
for ( i in 1:length(mtcars)){
  hist(mtcars[,i],prob=TRUE,main=paste("Prod of -",colnames(mtcars)[i]),xlab=colnames(mtcars)[i]) 
  lines(density(mtcars[,i],na.rm=T),col="red",lwd=1)  
}

#other way
library(tidyr)
library(purrr)
library(ggplot2)
library(magrittr)

mtcars %>%
  keep(is.numeric) %>%
  gather() %>%
  ggplot(aes(value)) +
  facet_wrap(~key,scales = "free") +
  stat_density()



#3.	Write a program to create boxplot for all variables.
windows()
par(mfrow=c(5,4))
for ( i in 1:length(mtcars)){
  boxplot(mtcars[,i],main=paste("Histogram of -",colnames(mtcars)[i]),xlab=colnames(mtcars)[i])
  
}

