#Load Libraries
library(tidyverse)

#Load Files
SNPs<- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")

#To adjust figure size (r, fig.width = 6, fig.height = 6} )
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = genotype, fill = chromosome)) + 
  coord_polar() +
  ggtitle("Total SNPs for each genotype") +
  ylab("Total number of SNPs") +
  xlab("Genotype")

#Graphic Output
# Plot graph to a pdf outputfile
pdf("SNP_example_plot.pdf", width=6, height=3)
ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = chromosome, fill = genotype))
dev.off()

#Plot graph to a png outputfile
ppi <- 300
png("SNP_example_plot.png", width=6*ppi, height=6*ppi, res=ppi)
ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = chromosome, fill = genotype))
dev.off()

## Exercise 1
SNPs<- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")
p<- ggplot(SNPs,aes(chromosome)) +
  geom_bar(fill = "blue") +
  ggtitle("Total SNPs for each chromosome") +
  ylab("Total number of SNPs") +
  xlab("Chromosome")
p

## Exercise 2
mycolor<-c("AA"="green", "AC"="green", "AG"="green", "AT"="green", "CC"="red", "CG"="red", "CT"="red", "GG"="blue", "GT"="blue", "TT"="blue","A"="pink", "C"="pink", "G"="pink", "T"="pink", "D"="orange", "DD"="orange", "DI"="orange","I"="orange","II"="orange","--"="green")
ggplot(SNPs, aes(chromosome, fill = genotype))+
  geom_bar(color = "black")+
  ggtitle("Total SNPs count for each chromosome")+
  ylab("SNP count")+
  xlab("Chromosome")+
  scale_fill_manual(values=c(mycolor))

## Exercise 3
ppi <- 300
png("Exercise3_plot", width=6*ppi, height=6*ppi, res=ppi)
ggplot(data = SNPs, aes(chromosome, fill = genotype)) + 
  geom_bar(position = "dodge")
dev.off()

## Exercise 4
SNPs$chromosome=ordered(SNPs$chromosome, levels=c(seq(1,22),"X","Y","MT"))
ggplot(SNPs,aes(chromosome,fill=genotype))+
  geom_bar(position="dodge")+
  facet_wrap(~chromosome, scales="free")+
  ggtitle("SNP Count for Each Type of Chromosome")+
  ylab("SNP Count(Thousands)")+
  xlab("Type of Chromosome")

##Exercise 5
p <- ggplot(SNPs, aes(chromosome, fill = genotype))+
   geom_bar(position = "dodge")+ 
   facet_wrap(~genotype)
 ggplotly(p)
 
## Exercise 6
 chromosome_subset <- subset(SNPs, chromosome == "Y")
 datatable(chromosome_subset)
 

 
 



