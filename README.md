# Simple Checkout

The Simple Checkout script allows you to create items, check their price, buy them at the checkout,
and ultimately receive a total for your shopping formatted as £xx.xx.

I wrote this script in response to the user stories listed [here](https://diode.makersacademy.com/students/samjones1001/projects/317).
This project was created whilst I was at Makers Academy(April to July 2020). I decided to this project
in order to build three of the skills I was working towards during Week 2 of the course: extracting a class, mocking, and dependency injection.
You can find out more information about my goals and how I achieved them in my [Portfolio](https://github.com/NikitaDouglas/MyPortfolio/blob/master/Week2.md).

## How To Use Simple Checkout

You can run this script in a REPL such as `irb` by loading the `item.rb` file.

You can clone this script using the green **Clone or Download** button above. On cloning,
you will need to install bundler (take a look [here](https://bundler.io/) if you don't know how to do that)
and then run `bundle install` to install the dependencies.

The tests were written with RSpec - run `rspec` when you're in the SimpleCheckout root directory to run the tests.

## How I Built Simple Checkout

I'm began this project with the assumption that I was the shopper in the [user stories](https://diode.makersacademy.com/students/samjones1001/projects/317).
I decided that the Simple Checkout would be tested and run in `irb`.

I then proceeded to create a sequence diagram to plan my approach.

![image of Simple Checkout sequence diagram](https://drive.google.com/open?id=1wRk0mtJ57mIab7mp-efRtZagZrqhZ96L)

As you can see, from the outset I planned to use a `Formatter class` to format the total price, but
I initially had a private `format_total` method in the `Checkout` class (here is the [relevant commit](https://github.com/NikitaDouglas/SimpleCheckout/commit/e2c993179c897049beeea97ebe2723a16b977c68)).
Thus, when it came to creating a `Formatter class`, I was able to practice the OOP principles of delegating, extracting, and dependency injection
whilst maintaining test coverage.


In order to progress through the user stories, I looked at each one in turn
and ran a feature test for it, before moving to write a unit test in RSpec. I was strict in my
approach to TDD, committing my cod after each passed test and then doing any necessary refactoring before committing again.

I got the opportunity to test my doubling and stubbing abilities whilst writing my tests;
initially testing without either, before refactoring my code to use them.   
