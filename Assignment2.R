
#Assignment2
#1) Prompt the user to enter a three digit positive number
inputnumber <- readline(prompt = "Enter a three digit positive number")
inputnumeric <- as.numeric(inputnumber) #as.numeric converts a number into a numeric but converts character into na.

#2) Check if the user input is numeric. If not, print an error message and quit.
# the is.na identifies if inputnumeric is na, if it is then it shows true and proceeds to output an error message.
if (is.na(inputnumeric) == T) {
  print("Error Input")
}

#3 Check if the number is narcissistic. 
#A narcissistic number, or an Armstrong number, is a number that is equal to the sum of the cubes of its own digits. 
#153, 370, 371, 407 are three digit Armstrong numbers.
#First I downloaded the string package, and then utilized str_split function to split the three digits in inputnumeric variable.
library(stringr)
narnumber <- unlist(str_split(inputnumeric, pattern = "")) #the pattern argument uses the regular expression to identify how to split the variable narnumber.
numnar <- as.numeric(narnumber) #as.numeric is converting the variable narnumber into a numeric.
sumnumnar <- numnar[1]^3 + numnar[2]^3 + numnar[3]^3 #I cubed the first, second, and third index and added them together in the variable sumnumnar.

#4) Display the result with an appropriate message, e.g. “127 is not an Armstrong number” or 
#“370 is a narcissistic number” or any additional fun text you may want to add.
# if else identifies if sumnumnar is equal to the input number then that means it is a narcissistic number and it prints, "is an narcissistic number", if sumnumnar is not equal to the input number it prints, "is not a narcissistic number".
if(sumnumnar==inputnumeric) {
  print(sumnumnar,"is an narcissistic number")
} else {
  print(sunnumnar, "is not a narcissistic number")
}