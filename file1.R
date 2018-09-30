#delete vector-----
(x=seq(1,5,length.out=15))
#plot(density())
(x=rnorm(100))
plot(density(x))
mean(x)
(x1=rnorm(1000000, mean=50, sd=5))
plot(density(x1))
abline(v=mean(x1),h=0.04)
#matrix-----
100:111
(m1=matrix(1:12,nrow=4))
m2=matrix(1:12,ncol=3,byrow=T)
X=101:124
length(x)
matrix(x,ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1
#access elements of matrix
m1[1,2:3]
m1[c(1,3),]
#number of rows and columns----
m1


paste("c","0",sep="-")
paste("c",1:100,sep="-")
(colnames(m1)=paste('c',1:3,sep=''))
M1
m1
attributes(m1)
#vector to matrix---
(m3=1:24)
dim(m3)
dim(m3)=c(6,4)
m3
#access elements----
m2
m2[1:5]
m2
m2[c(TRUE,F,T,F),c(2,3)]
m2[m2 > 5 &m2 < 10]
m1:m2
m1[1:2,1:2]
m1[c('R1'),]
m1[1:2,]
