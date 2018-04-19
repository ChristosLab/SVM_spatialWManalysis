a <- c()

a <- c(a,system.time(sub180$isuspre0 <- SampleTestSVC(isuspre0,1000,180)))
a <- c(a,system.time(sub180$isuspre1 <- SampleTestSVC(isuspre1,1000,180)))
a <- c(a,system.time(sub180$isuspre2 <- SampleTestSVC(isuspre2,1000,180)))
a <- c(a,system.time(sub180$isuspre3 <- SampleTestSVC(isuspre3,1000,180)))

a <- c(a,system.time(sub180$isuspost0 <- SampleTestSVC(isuspost0,1000,180)))
a <- c(a,system.time(sub180$isuspost1 <- SampleTestSVC(isuspost1,1000,180)))
a <- c(a,system.time(sub180$isuspost2 <- SampleTestSVC(isuspost2,1000,180)))
a <- c(a,system.time(sub180$isuspost3 <- SampleTestSVC(isuspost3,1000,180)))

a <- c(a,system.time(sub180$iantpre0 <- SampleTestSVC(iantpre0,1000,180)))
a <- c(a,system.time(sub180$iantpre1 <- SampleTestSVC(iantpre1,1000,180)))
a <- c(a,system.time(sub180$iantpre2 <- SampleTestSVC(iantpre2,1000,180)))
a <- c(a,system.time(sub180$iantpre3 <- SampleTestSVC(iantpre3,1000,180)))

a <- c(a,system.time(sub180$iantpost0 <- SampleTestSVC(iantpost0,1000,180)))
a <- c(a,system.time(sub180$iantpost1 <- SampleTestSVC(iantpost1,1000,180)))
a <- c(a,system.time(sub180$iantpost2 <- SampleTestSVC(iantpost2,1000,180)))
a <- c(a,system.time(sub180$iantpost3 <- SampleTestSVC(iantpost3,1000,180)))

a