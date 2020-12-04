library(class)

traindata<-read.csv("Trainabc.csv", header=TRUE, sep=",")

testdata<-read.csv("Testabc.csv", header=TRUE, sep=",")

train<-read.csv("train_u6lujuX_CVtuZ9i.csv")

train_label<- traindata$result
train_data<-traindata[,1:5]

ggplot(train, aes(x=Loan_Status,y=ApplicantIncome))+geom_boxplot()+ggtitle("Loan Status by Applicant income")

ggplot(train, aes(x=Loan_Status,y=CoapplicantIncome))+geom_boxplot()+ggtitle("Loan Status by coapplicant income")

ggplot(train, aes(x=Loan_Status,y=LoanAmount))+geom_boxplot()+ggtitle("Loan Status by Loan Amount")


test_label<- testdata$result
#a<-readline(prompt="No of Dependents:")
#b<-readline(prompt="Applicant Income:")
#c<-readline(prompt="Co Applicant Income:")
#d<-readline(prompt="Loan Amount:")
#e<-readline(prompt="Loan Amount Term:")

#tes=c(a,b,c,d,e)

test_pred<-knn(train = train_data, test =tes, cl=train_label,k =5,prob=TRUE)
if(test_pred==1)
{
  result="APPROVED";
}
if(test_pred==0)
{
  result="NOT APPROVED";
}

library(gmodels)
crossprod(x=test_label,y=test_pred,prop.chisq=FALSE)

