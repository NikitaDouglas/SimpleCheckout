# Action Plan
Write the code for a supermarket checkout that can calculate the price of a number of items. Each item should be priced individually, and the checkout should be able to scan them in any order.

## User Stories

As a shopper
So I know how much an item costs
I would like to be able to see its price

As a shopper
So that I can buy an item
I would like to be able to scan items at the checkout

As a shopper
So that I know how much to pay
I would like to be able to see a total for all scanned items

As a shopper
So that I know how much to pay
I would like to see all prices correctly formatted (£xx.xx)

You main focus here should be to follow a rigorous TDD process: RED, GREEN, REFACTOR!

## Evidence Plan
You'll be able to explain the approach you took to writing your code and justify some of the decisions you made (emotional)

You will have a well tested, working implementation of the system described above (empirical)

You will discuss your approach with a coach, describing your TDD process, and will receive feedback (credible)

## My Evidence

I'm going to begin this exercise with the assumption that I am the shopper in the user stories.
I'm going to run feature tests on IRB and also create a couple of Domain Model Diagrams for my work.


In my initial plan for this challenge I drew a sequence diagram with three classes:
`Item`, `Checkout`, `Formatter`. Given the aim of this exercise is to break one class into two,
I can see that I can initially format the price with a private method in `Checkout` and then delegate
that to a new class `Formatter`.
