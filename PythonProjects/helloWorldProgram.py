print('Hello World!')
namePlease = input('What is your name? ')
print('It is good to meet you', namePlease)
print('The length of your name is : ',len(namePlease))
age = int(input('Please give your age: '))
print('You will be ' + str((age) + 1) + ' in a year.')

#
# The age variable contains the value returned from input(). Because
# the input() function always returns a string (even if the user typed in a number),
# you can use the int(age) code to return an integer value of the string
# in age. This integer value is then added to 1 in the expression int(age) + 1.
