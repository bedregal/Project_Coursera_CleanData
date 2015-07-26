---
title: "README file for run_analysis.R code"
author: "Alejandro G. Bedregal"
date: "July 26 2015"
---
**Description of the steps followed by the run_analysis.R code**

*Step 1:* We read the zip file containing the data for the "Human Activity Recognition Using Smartphones"" data set. The dataset was built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors. A total of 561 features were measured in multiple observations for each subject and activity. We read separetly this information from the training and testing subsamples using the "read.table"" command.

*Step 2:* We combine measurements of the training and testing sets in a single data frame using "rbind"" command.

*Step 3:* We read the Activity numeric flags (1:6) for each observation in the test and training datasets. We combine them in a single dataframe with rbind.

*Step 4:* Instead of numbers, we give descriptive names to each Activity using the 
custom function "fn_name_activity". The assigned names are:
        
        1 = "walk"
        2 = "walk_up"
        3 = "walk_down"
        4 = "sit"
        5 = "stand"
        6 = "lay"
        
This results in a character string with as many elements as the total number of observations.

*Step 5:* We read the Subject flag (1:30) for each observation in the test and training data sets separately. Then we combine both datasets in a single data frame with rbind.

*Step 6:* We read the 561 feature names as strings (column names). Then we select only those Features with the strings "mean" and "std" in their names. For this we use the "grepl" command. 79 feature names fulfill these requirements.

*Step 7:* We incorporate the Activity name and Subject flag information into the above training+testing data frame using "cbind". We also give meaningful names to each column of the new data frame using "colnames" command. 

*Step 8:* We make a second tidy dataset with the AVERAGE value of each of the 79 
 selected Features for each Activity and Subject. For this we use the "melt" and "dcast"
 from the "reshape2"" package. We include the prefix "Avg_" in each of the 79 feature column names using the "setnames" command from the "data.table" package.

*Step 9:* Finally, we save this tidy data set in a txt file using "write.table"







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
