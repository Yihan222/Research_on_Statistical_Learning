######C4.5##########
library(dplyr)
library(ggplot2)
library(psych)
library(tidyverse)
library(randomForest)
library(GGally)
library(caret)
library(naivebayes)
library(Amelia)
data <- read.csv("heart.csv")
colnames(data)[1] <- "age"
data$target <- factor(data$target, levels = c(0,1), labels = c("False", "True"))
str(data)
head(data)
describe(data)
missmap(data)
table(data$target)
y<-quantile(data$age,c(.8,.6,.4,.2))  #��mpg����ֵȡ��λ��
data$group[data$age<y[1]&data$age>=y[2]]<-"A"
data$group[data$age<y[2]&data$age>=y[3]]<-"B"
data$group[data$age<y[3]&data$age>=y[4]]<-"C"
data$group[data$age<y[4]]<-"D"
data$group<-factor(data$group)   #��ҪԤ��ı�������Ϊ���ӣ�����J48()�����޷�ʶ��
a<-round(3/4*sum(data$group=="A"))
b<-round(3/4*sum(data$group=="B"))
c<-round(3/4*sum(data$group=="C"))
d<-round(3/4*sum(data$group=="D"))
#library(sampling) 
#sub<-strata(data,stratanames="group",size=c(a,b,c,d),method="srswor")   #�Է���������÷ֲ��������֤�����Ĵ�����
#tdata<-data[sub$ID_unit,]   #ѵ����
#vdata<-data[-sub$ID_unit,]   #Ԥ�⼯

#�鿴��������������
apply(data,MARGIN = 2,class)
data$target=as.factor(data$target)
#����������Ϊ�������ͣ��������ԣ�
ind=sample(2,nrow(data),replace = TRUE,prob = c(0.7,0.3))
data.train<-data[ind==1,]
data.test<-data[ind==2,]
#�鿴ѵ�����Ͳ��Լ�������
table(data.train$target)/nrow(data.train)
table(data.test$target)/nrow(data.test)

#2������������J48()
library(RWeka)                                                            
ctree<-J48(group~.,data,control=Weka_control(M=2))
print(ctree)
plot(ctree)
#J48 pruned tree

#3��Ԥ��predict()
pretree<-predict(ctree,newdata=vdata)
table(pretree,vdata$group,dnn=c("Ԥ��ֵ","��ʵֵ"))  #�����������
