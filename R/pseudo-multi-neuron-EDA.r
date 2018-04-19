# Import all sustained neurons for a pseudo-multi-neuron support vector machine analysis
# using all sustained dorsolateral cue-selective neurons (pre- and post-training)

library(e)
library(readr)
sus <- read_csv("C:/Users/kelltr15/Google Drive/neuron-analyst/artificial-intelligence/output/LocationOnCue1_allSustained.csv", 
                                        col_names = FALSE, col_types = cols(`1` = col_factor(levels = c("1", 
                                                                                                        "2", "3", "4", "5", "6", "7", "8", 
                                                                                                        "9"))))

#*****************************************************
colnames(sus)[1] <- "Class"

sus <- sus[,-16]
#*****************************************************

# Divide the data into training and testing datasets
sus[,"train"] <- ifelse(runif(nrow(sus))<0.8,1,0)

trainset <- sus[sus$train==1,] # assign to TRAINSET those entries where TRAIN is 1
testset <- sus[sus$train==0,]

# Which column is the TRAIN flag?
trainColNum <- grep("train",names(trainset))
# Let's remove the train flag column
trainset <- trainset[,-trainColNum]
testset <- testset[,-trainColNum]

# Find the column number of the thing we are trying to predict
classColNum <- grep("Class",names(sus))

# TODO: Implement handling of constant variables.
# Constant variables (columns) cannot be scaled, so we must remove them.
# sus <- sus[,-apply(sus, MARGIN = 2, function(x) max(x) == min(x))]

# make a model with a linear kernel and soft-margin C-classification with the default cost C=1 (FOR STARTERS, AT LEAST)
svm_model <- svm(Class~ ., data=trainset, method="C-classification", kernel="linear", cost=1)

# We will now evaluate on our training dataset, just for fun.
pred_train <- predict(svm_model,trainset)
# How accurate are our predictions?
mean(pred_train==trainset$Class) # Most recently 1.00

# We will finally evaluate on our testing dataset, which is a more useful measure.
pred_test <- predict(svm_model,testset)
# test accuracy
mean(pred_test==testset$Class) # Most recently 0.875