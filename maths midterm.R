# upload the dataset

data = read.csv("diabetes (1).csv")
install.packages("dplyr")
library(dplyr)

install.packages("explore")
library(explore)
# Exploratory data analysis

explore_tbl(data)
describe(data)
explore_all(data)
explore_tbl(data)
data %>%
  select(Glucose,Pregnancies,BloodPressure,SkinThickness,Insulin,BMI,Age,DiabetesPedigreeFunction) %>%
  explore_all(target = Age)
attach(data)
plot(SkinThickness,DiabetesPedigreeFunction,
     main="Basic Scatter plot of Glucose vs. Insulin",
     xlab=" Glucose",
     ylab="Insulin")
abline(lm(Insulin~Glucose), col="red", lwd=2, lty=1)
lines(lowess(Insulin~Glucose), col="yellow", lwd=2, lty=2)
