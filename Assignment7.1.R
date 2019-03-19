#1. Write a program to create histograms for all columns
windows()
par(mfrow=c(5,4))
for ( i in 1:length(mtcars)){
  barplot (height=50,mtcars,main=paste("Histogram of -",colnames(mtcars)),narm=T)

}

dev.off()
plot(mtcars$gear,type="S")

#2. 
windows()
par(mfrow=c(5,4))
for ( i in 1:length(mtcars)){
  hist(mtcars[,i],main=paste("Histogram of -",colnames(mtcars)[i]),xlab=colnames(mtcars)[i])
  abline(v = mean(mtcars[,i]), col = "red")
}


#3.	Write a program to create boxplot for all variables.
windows()
par(mfrow=c(5,4))
for ( i in 1:length(mtcars)){
  boxplot(mtcars[,i],main=paste("Histogram of -",colnames(mtcars)[i]),xlab=colnames(mtcars)[i])
  
}

