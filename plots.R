plot(women)
plot(women, type='p', pch=198, lty=2, col=2)
abline(lm(women$weight ~women$height),col ='red')
quantile(women$height, seq(0,1,.1))
quantile(women$weight,seq(0,1,.01))
stem(women$height)
#pie----------
gender
table(gender)
pie(table(gender))
x=c(10,20,40,50)
pie(x)
xlabels=c('A','B','C','D')
x/sum(x)
(labels2=paste(xlabels,round(x/sum(x),2) *100 ,sep= '-'))
pie(x,labels=labels2)
x
barplot(x,col=1:4)
barplot(x,col=1:4, horiz=T)

#CORRELATION PLOT-----------------
pairs(women)
cor(women$height,women$weight)
cov(women$height,women$weight)
head(mtcars)
cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])
