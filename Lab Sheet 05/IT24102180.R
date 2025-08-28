setwd("C:\\Users\\IT24102180\\Desktop\\IT24102180")

##Question1
delivery_times<-read.table("Exercise - Lab 05.txt",header=TRUE,sep=" ")
delivery_times

fix(delivery_times)
attach(delivery_times)
names(delivery_times)<-c("X1")
attach(delivery_times)

##Question2
histogram<-hist(X1,main="Histogram for Delivery Times",breaks=seq(20,70,length=10),right=TRUE)

##Question4
breaks<-round(histogram$breaks)
breaks

freq<-histogram$counts
freq

cum.freq<-cumsum(freq)
cum.freq

new<-c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type='l',main="Cumulative Frequency Polygon for Delivery Times",xlab="Deliver Times",ylab="Cumulative Frequency",ylim=c(0,max(cum.freq)))
