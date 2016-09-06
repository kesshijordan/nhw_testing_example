demographics <- read.csv(file='participants.tsv', head=TRUE, sep="\t")
age <- demographics[4]
#demean_age <- age - sum(age)/length(age)
demean_age <- age/0
write.table(demean_age, file="age_demeaned.tsv", row.names=FALSE, col.names=FALSE, sep="\t")

print("done!")
