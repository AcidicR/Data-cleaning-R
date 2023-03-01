datasets::airquality#lopad dataset
View(airquality)
complete.cases(airquality)#(TRUE for when there is missing value,FALSE means otherwise)
#install neccesary packges
library(tidyverse)
library(mice)#access to imputation function
my_data<-airquality
imputing<-mice(my_data,m=5,maxit = 50)#produces 5,datasets by 50 iterations
imputed_data<-complete(imputing)#combine imputed data with rest of data,and assigned..
view(imputed_data)