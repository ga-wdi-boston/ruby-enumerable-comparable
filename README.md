![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Enumerables

## Introduction

A list is an abstract data type (ADT) that represents an ordered list of items.  The list may be empty.  If not empty, the list has a first item followed by a list containing the rest of the items. This is not a rigorous definition.

An enumerable is Ruby's implementation of `list`.

We'll look at list processing techniques and the wide range of areas in which they are applicable.

## Objectives

By the end of this lesson, students should be able to:

- Use `any?` and `all?` to test `Enumerables` elements
- Use `map` to create an `Array` of transformed `Enumerable` elements
- Use `reduce` to "summarize" the elements in an `Enumerable`
- Process streams and strings as lists

## Instructions

Fork, clone, branch (lesson), npm install, and bundle install.

## Lists are ubiquitous

### Brainstorm

What are some types of lists?

What are some things we'd put on those lists?

## Array in JavaScript versus Ruby

We'll compare and contrast Ruby's [Array](http://ruby-doc.org/core-2.2.3/Array.html) with JavaScript's [Array](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array).

First let's compare the list of methods for Array in each language.

### Demo

Ruby and JavaScript Arrays both have a map and reduce method.  Let's explore using them to see the similarities and differences.

Note that Ruby, by convention, denotes a predicate method with a terminal `?`.

```ruby
[1] pry(main)> fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
```

```js
> var fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];
```

In JavaScript, we use a function to control the behavior of Array methods.  In Ruby, we use a block ( `{|p|}` for one line blocks, `do ... end` for multi-line blocks).

### Practice

Alternating between JavaScript and Ruby, write a script that:

- calculates the sum of the first ten Fibonacci numbers
- calculates the product of the first ten Fibonacci numbers
- calculates the sum of the the odd Fibonacci numbers
- calculates the product of the even Fibonacci numbers (excluding zero).

## Deeper look

The following table contains a mapping of some of the methods that potentially touch all the elements in an Array.

JavaScript | Ruby
---------- | ----
`every` | `all?`
`filter` | `select`
`forEach` | `each`
`map` | `map`
`reduce` | `reduce`
`some` | `any?`

What do you notice?  Where are `any?` and `reduce`?

## The Enumerable Module

Ruby's [Enumerable](http://ruby-doc.org/core-2.2.3/Enumerable.html) module provides many list processing methods based on the method `each`.  Ruby's Array class includes the Enumerable module.

### Modules

In Ruby, modules serve two purposes.  The first is to create name spaces.  The second is to supply common behavior to a class.

The `Math` module hides mathematical functions inside the name-space `Math` so that short and common names don't pollute the global name-space (e.g. `Math::Pi` or `Math.cos`).

The [Comparable](http://ruby-doc.org/core-2.2.3/Comparable.html) module provide common operators to a class that implements the `<=>` (spaceship) operator.  Let's look at `lib/card.rb`.

### Practice

How do you compare cards?

In your squads create an algorithm to determine which of two cards, if either, is "greater" than the other.

### Demo

Adding the spaceship operator to `Card`.

### Practice - A list as a deck of cards

Let's simulate Enumerable methods using a deck of cards.  In your squad, one of you will act as the method and another as the block.  The third squad member will record the result.

### Code along

Let's use the scripts `bin/people-array.js` and `bin/people-array.rb` to explore Array methods in both Ruby and JavaScript.  The data in the objects we'll be processing comes from the comma separated values (CSV) file `data/people.csv`

The Person objects we'll test against have properties/methods that align with the headers in `data/people.csv` plus the method `age`

### Practice

Use the `bin/people-array.*` scripts to

- Count all the people who are older than you (or just pick an age).  Younger.
- Count all the people whose first name and last name start with the same letter.
- Calculate the average age of all the people.

## Files as lists

Ruby's [File](http://ruby-doc.org/core-2.2.3/File.html) includes `Enumerable` so we can use all of those methods to process files a character or a line (the default) at a time.

Other enumerable classes related to working with files include [IO](http://ruby-doc.org/core-2.2.3/IO.html), and [Dir](http://ruby-doc.org/core-2.2.3/Dir.html).

I used the Ruby Standard Library class [CSV](http://ruby-doc.org/stdlib-2.2.3/libdoc/csv/rdoc/CSV.html) to load data for the `bin/*-array.rb` scripts.

### Code along

Using `bin/read-file.rb` we'll read all the lines in a file and print them.

### Practice

Let's modify that script to mimic the behavior of the `wc` (word count) utility.

### Code along

Now we'll read two files at the same time.  This is a good time to look at [Enumerator](http://ruby-doc.org/core-2.2.3/Enumerator.html) which is what gets returned when we call `each` without a block.

We'll also need to look briefly at exception handling as Enumerator relies on this mechanism.

## Cards in Ruby

Let's explore the start of writing a card game in Ruby using `lib/card.rb` and `lib/deck.rb`.

## Ranges as lists

Ruby's [Range](http://ruby-doc.org/core-2.2.3/Range.html) class provides a convenient way to express sequence of integers.

```ruby
[1] pry(main)> 1..10
```

### Code along - Stepped Range

We'll build a new range class that increments by a provided value.  The requirement to creating an `Enumerable` is a correct implementation of the method `each`.

## Hashes as lists

[Hash](http://ruby-doc.org/core-2.2.3/Hash.html) includes Enumerable so we can treat it as a list

## Strings as lists

We'll see how - **[String](http://ruby-doc.org/core-2.2.3/String.html)** can be treated as a lists even though it doesn't include Enumerable.  String accomplishes this using the methods that start `each_` which return an `Enumerator`.

### Practice

Let's implement `normalize_words`, `unique_words`, `word_count`, and `word_frequencies` in `lib/string.rb`

## Additional resources

Two images to give you a sense of the relationships in Ruby.

- [Hand drawn](http://farm6.staticflickr.com/5443/10075536704_84aa13676a_o.jpg)
- [And not](http://i.stack.imgur.com/1taqB.png)

These images may diverge slightly from the actual relationships, Ruby is an evolving language, but do give a sense of much of what goes on.

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
