---
title: "CodeBook for the data cleaning and analysis "Human Activity Recognition Using Smartphones" data set."
author: "Alejandro G. Bedregal"
date: "24 de julio de 2015"
output: html_document
---

**Study Design**
The raw data was collected from the "Human Activity Recognition Using Smartphones" data set. This data is public available in this webpage: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset was built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.
In our study we present a tidy version of this dataset. We select the mean and standard deviation for each of the parameters measured in each of the individual observations (rows). Then, we estimate the mean among all the observations for a given Activity (1:6, see description below) and Subject (30 test subjects numberd from 1 to 30). This tidy dataset is presented in the "tidy_dataset.txt" file.

**Activity Code**
Six (6) differebt activities are preformed by the test Subjects in this study. While in the raw dataset they are just flagged with 1:6 numbers, we decide to use more meaningfull names for each one. Below are the assigned Activity names and its meaning:

*lay*


**Code Book**



#Reading Data ZIP file
datafile <- "getdata-projectfiles-UCI HAR Dataset.zip"

# Reading measurements of 561 features from the test and training datasets 
feat_train <- read.table(unz(datafile, "UCI HAR Dataset/test/X_test.txt"))

# Reading Activity flags (1:6) for each set of 561 features in the test and training datasets

# Reading the Subject flag (1:30) for each set of 561 features in the test and training datasets

# Reading the 561 feature names

# Combining Measurements of the training and testing sets in a single data frame

# Incorporates the Activity and Subject flag information into the above training+testing data frame

# Select only those Features (column names) with the strings "mean" and "std" in their names





This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
