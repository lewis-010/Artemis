## Bash projects

A repo for learning bash.


### Project 1 - Password Generator
Given this is the first bash script I will be writing lets keep it simple; a password generator that allows the user to specify the length and validates their input. Length validation was taken from [Microsoft's recommendation](https://support.microsoft.com/en-gb/windows/create-and-use-strong-passwords-c5cebb49-8c53-4f5e-2bc4-fe357ca048eb) - anything over 12 but kept to <20 for ease of use. For generating random strings within bash there looked to be a few routes. This project settled on utilisng /dev/urandom due to its high level of entropy.
