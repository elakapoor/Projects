import random

secretNumber = random.randint(1, 20)
print('I am yhinking of the number between 1 to 20')

for guessTaken in range(1, 7):
    print('guess taken')
    guess = int(input())

    if guess < secretNumber:
        print('Your guess is too low')
    elif guess > secretNumber:
        print('Your guess is too high')
    else:
        break

if guess ==  secretNumber:
    print('Good job! You guessed my number in ' + str(guessTaken) + ' guesses!')
else:
    print('Nope. The number I was thinking of was ' + str(secretNumber))
