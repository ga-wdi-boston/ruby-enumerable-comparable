[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Enumerable and Comparable

## Prerequisites

-   [Ruby Enumerable Builtins](https://github.com/ga-wdi-boston/ruby-enumerable-builtins)

## Objectives

By the end of this talk, developers should be able to:

-   Add Comparable operators to a class.
-   Add Enumerable methods to a class.

## Preparation

1.  Fork and clone this repository.
    [FAQ](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
1.  Create a new branch, `training`, for your work.
1.  Checkout to the `training` branch.
1.  Install dependencies with `bundle install`.

## Introduction

We'll explore an important Ruby mechanism for adding behavior to a class:
mixins.

## The Comparable Module

### Lab - comparing cards

How do you compare cards?

In your squads create an algorithm to determine which of two cards, if either,
is "greater" than the other.

### Demo

The [Comparable](http://ruby-doc.org/core-2.3.0/Comparable.html) module provide
common operators to a class that implements the `<=>` (spaceship) operator.
Let's look at `lib/card.rb`.

Adding the spaceship operator to `Card`.

### Lab - A list as a deck of cards

Let's simulate Enumerable methods using a deck of cards.  In your squad, one of
you will act as the method and another as the block. The third squad member will
record the result.

### Cards in Ruby

Let's explore the start of writing a card game in Ruby using `lib/card.rb` and
`lib/deck.rb`.

## The Enumerable Module

We'll build our own `list` using Ruby's [Enumerable](http://ruby-doc.org/core-2.3.0/Enumerable.html) module.

### Code along - Stepped Range

We'll build a new range class that increments by a provided value.
The key to creating an `Enumerable` class is a correct implementation of the
 `each` method.

## Tasks

Developers should run these often!

-   `bin/rake nag`  (or `bundle exec rake nag`):
    runs code quality analysis tools on your code and complains.
-   `bin/rake test` (or `bundle exec rake test`): runs automated tests.


## Additional Resources

-   [List ADT](https://en.wikipedia.org/wiki/List_%28abstract_data_type%29)

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
