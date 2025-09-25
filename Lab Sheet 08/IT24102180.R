setwd("C:\\Users\\IT24102180\\Desktop\\IT24102180")

data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

#Question1
popmn<-mean(Weight.kg.)
popmn

popsd<-sd(Weight.kg.)
popsd

#Question2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.means

s.sd<-apply(samples,2,sd)
s.sd

#Question3
samplemean<-mean(s.means)
samplemean

samplesd<-sd(s.means)
samplesd
