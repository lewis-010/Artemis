## Bash projects

A repo for learning bash.


### Project 1 - Password Generator
Given this is the first bash script I will be writing lets keep it simple; a password generator that allows the user to specify the length and validates their input. Length validation was taken from [Microsoft's recommendation](https://support.microsoft.com/en-gb/windows/create-and-use-strong-passwords-c5cebb49-8c53-4f5e-2bc4-fe357ca048eb) - anything over 12; kept to <20 for ease of use. For generating random strings within bash there looked to be a few routes, but this project settled on utilisng /dev/urandom due to its high level of entropy. 

One interesting outcome from using this method is because Base64 encoding of the bytes from /dev/urandom works by converting every three bytes of input into four characters of output, resuresulting in an approximately 33% increase in the user-specified length when the input is not a multiple of three bytes; the password variable compensates for this.
