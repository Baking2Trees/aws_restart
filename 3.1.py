"""
Your module description
"""

myString = "This is a string."
print(myString)
print(type(myString))
print(myString + " is of the data type " + str(type(myString)))

print()
firstString = "water"
secondString = "fall"
thirdString = firstString + secondString
print(thirdString)

print()
name = input("What is your name? ")
print(name)

print()
color = input("What is your favorite color?  ")
animal = input("What is your favorite animal?  ")
# You have been using the print() function with only one variable, 
# but you can also use it with multiple variables to format a string. Enter the following code:
print("{}, you like a {} {}!".format(name,color,animal))