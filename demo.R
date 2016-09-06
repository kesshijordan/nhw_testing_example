args <- commandArgs(trailingOnly = TRUE)
demographics <- read.csv(file='participants.tsv', head=TRUE, sep="\t")
age <- demographics[2]
demean_age <- age - sum(age)/length(age)

mean_age <- sum(age)/length(age)

stopifnot(mean_age < 100)
stopifnot(mean_age > 0)

write.table(demean_age, file="age_demeaned.tsv", row.names=FALSE, col.names=FALSE, sep="\t")

print("done!")
