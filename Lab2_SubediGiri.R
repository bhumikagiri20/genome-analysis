#Example 1
SNPs <- c("AA", "AA", "GG", "AG", "AG", "AA","AG", "AA", "AA", "AA", "AG")
SNPs

#Example 2
SNPs_cat <- factor(SNPs)
SNPs_cat

#Example 3
table(SNPs_cat)

#Example 4
plot(SNPs_cat)

#Example 5
as.numeric(SNPs_cat)

#Matrices
#Example 1
Day1 <- c(2,4,6,8)
Day2 <- c(3,6,9,12)
Day3 <- c(1,4,9,16)
A <- cbind(Day1,Day2,Day3)
A

#Example 2
Day1 <- c(2,4,6,8)
Day2 <- c(3,6,9,12)
Day3 <- c(1,4,9,16)
B <- rbind(Day1,Day2,Day3)
B

#Example 4
Day4 <- c(5,10,11,20)
C <- rbind(B,Day4)
C

#Example 5
A * 10

#Example 6
A[1]

#Example 7
A[12]

#Example 8
A[ ,c(1,3)]

#Example 9
A[c(2,4), ]

#Example 10
t(A)

#Data frames
#Example 1
Gene1 <- c(2,4,6,8)
Gene2 <- c(3,6,9,12)
Gene3 <- c(1,4,9,16)
Gene <- c("Day 1", "Day 2","Day 3", "Day 4")
RNAseq <- data.frame(Gene1, Gene2, Gene3, row.names = Gene)
RNAseq

#Example 2
RNAseq$Gene3

#Example 3
plot(RNAseq$Gene1,RNAseq$Gene3)

#Example 4
plot(RNAseq$Day,RNAseq$Gene3)

#Example 5
RNAseq$Gene4 <- c(5, 10, 15, 20)
RNAseq

#Example 6
RNAseq[,"Gene5"] <- c(1, 2, 3, 3)
RNAseq

#Example 7
RNAseq["Day 4",] <- rbind(10, 14, 20, 22, 3)

#Checking on objects types
#Example 1
x = 1
str(x)

#Example 2
a = "ATGCCCTGA"
str(a)

#Example 3
str(SNPs)

#Example 4
SNPs <- c("AA", "AA", "GG", "AG", "AG", "AA","AG", "AA", "AA", "AA", "AG")
str(SNPs_cat)

#Example 5
Day1 <- c(2,4,6,8)
Day2 <- c(3,6,9,12)
Day3 <- c(1,4,9,16)
B <- rbind(Day1,Day2,Day3)
str (B)

#Example 6
Gene1 <- c(2,4,6,8)
Gene2 <- c(3,6,9,12)
Gene3 <- c(1,4,9,16)
Gene <- c("Day 1", "Day 2","Day 3", "Day 4")
RNAseq <- data.frame(Gene1, Gene2, Gene3, row.names = Gene)
str(RNAseq)

#Importing data
#Loading a trancuated 23andMe file

SNP_table <- read.table("23andMe_example_cat25.txt", header = TRUE, sep = "\t")
SNP_table

#Getting information on a dataset
#Example 1
names(SNP_table)

#Example 2
str(SNP_table)

#Example 3
levels(SNP_table$genotype)

#Example 4
dim(SNP_table)

#Example 5
class(SNP_table)

#Example 6
SNP_table

#Example 7
head(SNP_table, n=10)

#Example 8
tail(SNP_table, n=5)

#Example 9
SNP_table$chromosome <- as.factor(SNP_table$chromosome)
str(SNP_table) 

#Example 10
SNP_table$chromosome <- as.integer(SNP_table$chromosome)
str(SNP_table) 

#Example 11
SNP_table_AG <- subset(SNP_table, genotype == 'AG') 
SNP_table_AG

#Example 12
table(SNP_table_AG$chromosome)

#Example 13
subset(SNP_table, position > 700000 & position < 800000)

##Exercise 1
A <- c(1,3,6,9,12)
B <- c(1,0,1,0,1)
A+B
A-B
A*B
A/B

##Exercise 2
A <- c(0, 1, 2, 3)
B <- c("aa", "bb", "cc", "dd")
C <- c("aa", 1, "bb", 2)

str(A)
str(B)
str(C)

##Exercise 3
Genotype1 <- c("AA", "AA", "AG", "GG", "GG")
Genotype2 <- c("AA", "AA", "GG", "GG", "GG")
B <- cbind(Genotype1, Genotype2)
B

table(Genotype1)
table(Genotype2)

##Exercise 4
Treatment1 <- c(0, 1, 2, 3, 4)
Treatment2 <- c(0, 2, 4, 6, 8)
Treatment3 <- c(0, 3, 6, 9, 12)
times <- c(0, 2, 4, 6, 8)

Treatment <- data.frame(Treatment1, Treatment2, Treatment3, row.names = times)
Treatment

Treatment$times <- c(0, 2, 4, 6, 8)
Treatment

plot(Treatment$Treatment3, Treatment$times)

##Exercise 5
SNP_table <- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")

str(SNP_table)

#This chromosome is shown to  be a factor.
#Truncated version only  has numbers and has no characters. However, in this file, there are characters which means that there is a mix between numbers and characters or it only has characters.

##Exercise 6
table(SNP_table$genotype)

##Exercise 7
SNP_table_A <- subset(SNP_table, genotype == 'A')
table(SNP_table_A$chromosome)



























