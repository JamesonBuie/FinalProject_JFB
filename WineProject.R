# loading new dataset
data<-read.csv(file=file.choose(),header=TRUE,sep=",")

#creating logistic regression model using R
library(tidyverse)
head(data)

# using R function to create a logistic model
winemod<-glm(quality~.,data=data,family=binomial)
winemod
# summary will show which predictor variables are statistically significant
# will create a new logistic model in Python with the ones that are significant
summary(winemod)
# the predictor variables in the new model are
# volatile acidity, citric acid, chlorides, free sulfur dioxide, total sulfur dioxide
# sulphates, alcohol