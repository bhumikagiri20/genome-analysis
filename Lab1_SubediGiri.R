#Example 1
3*3

#Example 2
3+3/3

#Example 3
(3+3)/3

#Example 4: Natural Logathrim with base e=2.718282
log(10)

#Example 5: Exponential function
exp(2)

#Example 6: 3 raised to the third power
3^3

#Example 7: square root
sqrt(9)

#Example 8: Absolute value of 1-7
abs(1-7)

#Example 10
#Numerics

x=3.5
x

sqrt(x)

#integers
x=3.3
y= as.integer(x)
y

#logical
x=1; y=2
z= x>y
z

#standard logical operations
x=TRUE; y=FALSE
x&y

x|y

!x

#character
x="ATGAAA"
y="TTTTGA"
x

DNA=paste(x,y)
DNA

#complex
x= 1+2i
x

#vectors
x<- c(1, 10, 100)

x*2

sum (x)

#vector arithmatic
x<- c(1, 10, 100)
y<- c(1, 2, 3)
x*y

#characters
codons<- c("AUG", "UAU",  "UGA")
codons

#Simple graphs
RNA_levels<-  c(7, 28, 100, 201, 208 )

#simple bar plot
barplot(RNA_levels)




#Exercise 1
x=2
y=8

#sum
x+y

#differences
x-y

#product
x*y

#quotient
x/y

#Exercise 2
x=3.5
y=5

x^5>y^4

#Exercise 3

#vector
x<- c(43,62,108,129,211)
x

#sum
sum(x)

#division of vector by sum
x/sum(x)

#Exercise 4
nucleotides<- c("A", "T", "C", "G")
sort(nucleotides)
