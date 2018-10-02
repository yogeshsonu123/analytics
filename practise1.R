#creating a dataframe  with 100 row and variables--------------
gender= sample(c("Male","Female"),size=100,replace=T,prob= c(.7, .3))
gender
spl= sample(c("mrketing","finance","HR"),replace=T,size=100)
spl
age=floor(runif(100,21,30))
age
exp=rnorm(100,4,1)
exp
grade=sample(c('A','B','c','D'),size=100,replace=T)
grades=factor(grade,ordered=T,levels=c('D','C','B','A'))
grades
GRADE
grade
placement=sample(c('YES','NO'),replace=T,size=100)
placement
df1=data.frame(gender,spl,age,exp,grade,placement)
df1
write.csv(df1,file ='./data/student.csv')
library(dplyr)
names(df1)
df1 %>% group_by(placement,gender) %>% summarise(mean(exp),max(exp),mean(age))
hist(df1$age)
t1=table(df1$placement)
barplot(t1,col=1:2)
boxplot(df1$age)
pairs(df1[,c('age','exp')])
pie(t1)
par(mfrow=c(2,2))
pie(table(df1$gender))
pie(table(df1$placement))
pie(table(df1$grade))
pie(table(df1$spl))
par(mfrow=c(1,1))
#DECISION TREE------------------------
library(rpart)
library(rpart.plot)
tree=rpart(placement ~ . , data=df1)
tree
rpart.plot(tree,nn=T,cex=.8)
printcp(tree)
ndata=sample(df1,2)
ndata
predict(tree, newdata=ndata, type='class')
predict(tree, newdata=ndata,type='prob')

#clustering------------------
km3=kmeans(df1[,c('age','exp')],centers=3)
km3
km3$centers
plot(df1[,c('age','exp')],col=km3$cluster)
#LOGISTIC REGREESSION------------
logitmodel= glm(placement ~ age+gender ,data=df1, family='binomial')
summary(logitmodel)
logitmodel1=glm(placement ~ . , data=df1, family='binomial')
summary(logitmodel1)
logitmodel2=glm(placement ~ age , data=df1, family='binomial')
summary(logitmodel2)

#linear regression----------------------
linear1=lm(age ~ . , data=df1)
summary(linear1)
