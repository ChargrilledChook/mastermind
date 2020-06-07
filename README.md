# Mastermind

A command line version of the classic board game Mastermind.

An assignment for the Object Oriented Programming section of Ruby Programming for The Odin Project.

View on [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/oop?ref=lnav)

View on [Wikipedia](https://www.theodinproject.com/courses/ruby-programming/lessons/oop?ref=lnav)

## Features

* Two different game modes - choose whether to be the codemaster or codcracker
* If playing as codemaster, simple AI for the computer

## Version History

Version 1 completed 7/6/2020. Fulfils all of the original spec except for using partial matches in AI algorithim.

## Future Updates

### Planned Features

* Improved AI with different levels of difficulty
* Ability to play with two humans
* Ability to customise amount of turns, or colours
* Improve error handling - currently hard to break (converts incorrect input into 0s) but somewhat inelegant

### Code Refactoring

* Computer needs an overhaul
* Game functions need to be simplified
* Difficult to implement improved AI without making the code comparison for player and AI separate or much more modular

## Reflections

This project was both very satifsying and very frustrating. Some parts came together very quickly with very modular and clear code,
and other parts ended up being very convoluted and difficult to extend. The major sticking point came in trying to implement the 2nd part of the project - AI guessing.

### Successes

* The first half of the project (code guessing) came together reasonably smoothly. My code comparison may not have been perfect but it solved the problem.
* Pry is good, use it more often.
* Failures and difficulties were good learning experiences for some of the pitfalls of OOP and designing for future extensibility.

### Challenges

* Didn't commit often enough in this one. Got distracted in code holes. Commit early and often.
* Things became a mess when trying to implement AI guessing. I tried to implement some of the OOP concepts but I wasn't familiar enough with them
to come up with an effective and future proof / extensible design.


## Follow Up

* Keep reading Sandi Metz book
* Come back to this after learning / practicing a bit more
* Look at other student solutions
* Look at examples of good OOP code on github etc
