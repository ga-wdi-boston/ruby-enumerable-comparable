![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Enumerable and Comparable

## Instructions

Fork, clone, branch (training), and bundle install.

## Prerequisites

## Objectives

By the end of this lesson, students should be able to:

- Add Comparable operators to a class.
- Add Enumerable methods to a class.

## Introduction

We'll explore an important Ruby mechanism for adding behavior to a class: mixins.

## The Comparable Module

The [Comparable](http://ruby-doc.org/core-2.2.3/Comparable.html) module provide common operators to a class that implements the `<=>` (spaceship) operator.  Let's look at `lib/card.rb`.

### Practice

How do you compare cards?

In your squads create an algorithm to determine which of two cards, if either, is "greater" than the other.

### Demo

Adding the spaceship operator to `Card`.

### Practice - A list as a deck of cards

Let's simulate Enumerable methods using a deck of cards.  In your squad, one of you will act as the method and another as the block.  The third squad member will record the result.

### Cards in Ruby

Let's explore the start of writing a card game in Ruby using `lib/card.rb` and `lib/deck.rb`.

## The Enumerable Module

We'll build our own `list` using Ruby's [Enumerable](http://ruby-doc.org/core-2.2.3/Enumerable.html) module.

### Code along - Stepped Range

We'll build a new range class that increments by a provided value.  The key to creating an `Enumerable` is a correct implementation of the `each` method.

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
