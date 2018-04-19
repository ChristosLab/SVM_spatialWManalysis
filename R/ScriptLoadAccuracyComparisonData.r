source("AccuracyTestingFunctions.r")

susall0 <- RemoveZeroCols(ImportNeuronData("susall0"))
susall1 <- RemoveZeroCols(ImportNeuronData("susall1"))
susall2 <- RemoveZeroCols(ImportNeuronData("susall2"))
susall3 <- RemoveZeroCols(ImportNeuronData("susall3"))
suspre0 <- RemoveZeroCols(ImportNeuronData("suspre0"))
suspre1 <- RemoveZeroCols(ImportNeuronData("suspre1"))
suspre2 <- RemoveZeroCols(ImportNeuronData("suspre2"))
suspre3 <- RemoveZeroCols(ImportNeuronData("suspre3"))
suspost0 <- RemoveZeroCols(ImportNeuronData("suspost0"))
suspost1 <- RemoveZeroCols(ImportNeuronData("suspost1"))
suspost2 <- RemoveZeroCols(ImportNeuronData("suspost2"))
suspost3 <- RemoveZeroCols(ImportNeuronData("suspost3"))
antall0 <- RemoveZeroCols(ImportNeuronData("antall0"))
antall1 <- RemoveZeroCols(ImportNeuronData("antall1"))
antall2 <- RemoveZeroCols(ImportNeuronData("antall2"))
antall3 <- RemoveZeroCols(ImportNeuronData("antall3"))
antpre0 <- RemoveZeroCols(ImportNeuronData("antpre0"))
antpre1 <- RemoveZeroCols(ImportNeuronData("antpre1"))
antpre2 <- RemoveZeroCols(ImportNeuronData("antpre2"))
antpre3 <- RemoveZeroCols(ImportNeuronData("antpre3"))
antpost0 <- RemoveZeroCols(ImportNeuronData("antpost0"))
antpost1 <- RemoveZeroCols(ImportNeuronData("antpost1"))
antpost2 <- RemoveZeroCols(ImportNeuronData("antpost2"))
antpost3 <- RemoveZeroCols(ImportNeuronData("antpost3"))



# Stuff under this comment is basically scratch work

# This stuff in particular was just used to present some training/testing accuracies using subsampling to Christos

christos = matrix(nrow=24,ncol=2,0)

christos[1,] <- AverageTestSVC(antall0,1000,10)
christos[2,] <- AverageTestSVC(antall1,1000,10)
christos[3,] <- AverageTestSVC(antall2,1000,10)
christos[4,] <- AverageTestSVC(antall3,1000,10)
christos[5,] <- AverageTestSVC(antpost0,1000,10)
christos[6,] <- AverageTestSVC(antpost1,1000,10)
christos[7,] <- AverageTestSVC(antpost2,1000,10)
christos[8,] <- AverageTestSVC(antpost3,1000,10)
christos[9,] <- AverageTestSVC(antpre0,1000,10)
christos[10,] <- AverageTestSVC(antpre1,1000,10)
christos[11,] <- AverageTestSVC(antpre2,1000,10)
christos[12,] <- AverageTestSVC(antpre3,1000,10)

christos[13,] <- AverageTestSVC(susall0,1000,10)
christos[14,] <- AverageTestSVC(susall1,1000,10)
christos[15,] <- AverageTestSVC(susall2,1000,10)
christos[16,] <- AverageTestSVC(susall3,1000,10)
christos[17,] <- AverageTestSVC(suspost0,1000,10)
christos[18,] <- AverageTestSVC(suspost1,1000,10)
christos[19,] <- AverageTestSVC(suspost2,1000,10)
christos[20,] <- AverageTestSVC(suspost3,1000,10)
christos[21,] <- AverageTestSVC(suspre0,1000,10)
christos[22,] <- AverageTestSVC(suspre1,1000,10)
christos[23,] <- AverageTestSVC(suspre2,1000,10)
christos[24,] <- AverageTestSVC(suspre3,1000,10)

# The following fills a data frame with test accuracy results for statistical testing

sub10[,1] <- SampleTestSVC(antall0,1000,10)
sub10[,2] <- SampleTestSVC(antall1,1000,10)
sub10[,3] <- SampleTestSVC(antall2,1000,10)
sub10[,4] <- SampleTestSVC(antall3,1000,10)
sub10[,5] <- SampleTestSVC(antpost0,1000,10)
sub10[,6] <- SampleTestSVC(antpost1,1000,10)
sub10[,7] <- SampleTestSVC(antpost2,1000,10)
sub10[,8] <- SampleTestSVC(antpost3,1000,10)
sub10[,9] <- SampleTestSVC(antpre0,1000,10)
sub10[,10] <- SampleTestSVC(antpre1,1000,10)
sub10[,11] <- SampleTestSVC(antpre2,1000,10)
sub10[,12] <- SampleTestSVC(antpre3,1000,10)

sub10[,13] <- SampleTestSVC(susall0,1000,10)
sub10[,14] <- SampleTestSVC(susall1,1000,10)
sub10[,15] <- SampleTestSVC(susall2,1000,10)
sub10[,16] <- SampleTestSVC(susall3,1000,10)
sub10[,17] <- SampleTestSVC(suspost0,1000,10)
sub10[,18] <- SampleTestSVC(suspost1,1000,10)
sub10[,19] <- SampleTestSVC(suspost2,1000,10)
sub10[,20] <- SampleTestSVC(suspost3,1000,10)
sub10[,21] <- SampleTestSVC(suspre0,1000,10)
sub10[,22] <- SampleTestSVC(suspre1,1000,10)
sub10[,23] <- SampleTestSVC(suspre2,1000,10)
sub10[,24] <- SampleTestSVC(suspre3,1000,10)

## Now let's add from the insignificant neurons as well

sub10$isuspre0 <- SampleTestSVC(isuspre0,1000,10)
sub10$isuspre1 <- SampleTestSVC(isuspre1,1000,10)
sub10$isuspre2 <- SampleTestSVC(isuspre2,1000,10)
sub10$isuspre3 <- SampleTestSVC(isuspre3,1000,10)
sub10$isuspost0 <- SampleTestSVC(isuspost0,1000,10)
sub10$isuspost1 <- SampleTestSVC(isuspost1,1000,10)
sub10$isuspost2 <- SampleTestSVC(isuspost2,1000,10)
sub10$isuspost3 <- SampleTestSVC(isuspost3,1000,10)
sub10$iantpre0 <- SampleTestSVC(iantpre0,1000,10)
sub10$iantpre1 <- SampleTestSVC(iantpre1,1000,10)
sub10$iantpre2 <- SampleTestSVC(iantpre2,1000,10)
sub10$iantpre3 <- SampleTestSVC(iantpre3,1000,10)
sub10$iantpost0 <- SampleTestSVC(iantpost0,1000,10)
sub10$iantpost1 <- SampleTestSVC(iantpost1,1000,10)
sub10$iantpost2 <- SampleTestSVC(iantpost2,1000,10)
sub10$iantpost3 <- SampleTestSVC(iantpost3,1000,10)

## Now if we want to get U-test comparisons, we do:
utestdataNames <- list(c("antall0","antall1","antall2","antall3","antpost0","antpost1","antpost2","antpost3","antpre0","antpre1","antpre2","antpre3","susall0","susall1","susall2","susall3","suspost0","suspost1","suspost2","suspost3","suspre0","suspre1","suspre2","suspre3"),c())
ff = function(a, b) wilcox.test(sub10[,a],sub10[,b])$p.value
outer(1:24, 1:24, Vectorize(ff))
pmat <- outer(1:24, 1:24, Vectorize(ff))
pmat <- data.frame(pmat)
names(pmat) = utestdataNames[[1]]
row.names(pmat) = utestdataNames[[1]]





