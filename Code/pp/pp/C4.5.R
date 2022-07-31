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
y<-quantile(data$age,c(.8,.6,.4,.2))  #对mpg的数值取分位数
data$group[data$age<y[1]&data$age>=y[2]]<-"A"
data$group[data$age<y[2]&data$age>=y[3]]<-"B"
data$group[data$age<y[3]&data$age>=y[4]]<-"C"
data$group[data$age<y[4]]<-"D"
data$group<-factor(data$group)   #将要预测的变量定义为因子，否则J48()函数无法识别
a<-round(3/4*sum(data$group=="A"))
b<-round(3/4*sum(data$group=="B"))
c<-round(3/4*sum(data$group=="C"))
d<-round(3/4*sum(data$group=="D"))
#library(sampling) 
#sub<-strata(data,stratanames="group",size=c(a,b,c,d),method="srswor")   #对分组变量采用分层抽样，保证样本的代表性
#tdata<-data[sub$ID_unit,]   #训练集
#vdata<-data[-sub$ID_unit,]   #预测集

#查看各个变量的属性
apply(data,MARGIN = 2,class)
data$target=as.factor(data$target)
#将变量更改为因子类型（分类属性）
ind=sample(2,nrow(data),replace = TRUE,prob = c(0.7,0.3))
data.train<-data[ind==1,]
data.test<-data[ind==2,]
#查看训练集和测试集的数据
table(data.train$target)/nrow(data.train)
table(data.test$target)/nrow(data.test)

#2、创建分类树J48()
library(RWeka)                                                            
ctree<-J48(group~.,data,control=Weka_control(M=2))
print(ctree)
plot(ctree)
#J48 pruned tree

#3、预测predict()
pretree<-predict(ctree,newdata=vdata)
table(pretree,vdata$group,dnn=c("预测值","真实值"))  #输出混淆矩阵

