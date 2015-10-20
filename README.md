![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# An Introduction to Ruby Enumerables

## Introduction

A list is an abstract data type (ADT) that represents an ordered list of items.  The list may be empty.  If not empty, the list has a first item followed by a list containing the rest of the items. This is not a rigorous definition.

An enumerable is Ruby's implementation of `list`.

We'll look at list processing techniques and the wide range of areas in which they are applicable.

## Objectives

By the end of this lesson, students should be able to:

- Use `any?` and `all?` to test `Enumerables` elements
- Use `map` to create an `Array` of transformed `Enumerable` elements
- Use `reduce` to "summarize" the elements in an `Enumerable`
- Process strings and streams as lists

## Instructions

Fork, clone, branch (lesson), npm install, and bundle install.

## Lists are ubiquitous

### Brainstorm

What are some types of lists?

What are some things we'd put on those lists?

## Array in JavaScript versus Ruby

We'll compare and contrast Ruby's [Array](http://ruby-doc.org/core-2.2.2/Array.html) with JavaScript's [Array](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array).

First let's compare the list of methods for Array in each language.

### Demo

`bin/people-array.js` and `bin/people-array.rb` `data/people.csv`

### Practice

The following table contains a mapping of some of the methods that potentially touch all the elements in an Array.

JavaScript | Ruby
----------   ----
`every` | `all?`
`filter` | `select`
`forEach` | `each`
`map` | `map`
`reduce` | `reduce`
`some` | `any?`

Note that Ruby, by convention, indicates a predicate method with a terminal `?`.

What do you notice?  Where are `any?` and `reduce`?

## The Enumerable Module

Ruby's [Enumerable](http://ruby-doc.org/core-2.2.2/Enumerable.html) module provides many list processing methods based on the method `each`.

### Create a list of numbers

```ruby
[1] pry(main)> (1..10).map(&:itself)
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

### Manipulate a list of numbers with `map` and `reduce`

```ruby
[1] pry(main)> out_of_five = [3, 5, 4, 2, 4, 5]
=> [3, 5, 4, 2, 4, 5]
[3] pry(main)> average_out_of_five = out_of_five.reduce(:+)/out_of_five.length
=> 3
[4] pry(main)> average_out_of_five = out_of_five.reduce(:+)/out_of_five.length.to_f
=> 3.8333333333333335
[5] pry(main)> out_of_ten = out_of_five.map {|score| score * 2 }
=> [6, 10, 8, 4, 8, 10]
[6] pry(main)> average_out_of_ten = out_of_five.map{|score| score * 2 }.reduce(:+)/out_of_five.length
=> 7
[7] pry(main)> average_out_of_ten = out_of_five.map{|e| e * 2 }.reduce(:+)/out_of_five.length.to_f
=> 7.666666666666667
```
Method chaining is a Ruby idiom.

## The Enumerable Module

### Creating practice data using CSV

We'll use the files and script in `data/` to explore file processing.  Then we'll explore how to create practice data for the brainstormed lists.

### Testing and manipulating practice data

We'll go through a set of mini-labs for most of the methods provided by enumerable.

### Hashes as lists

Hash includes Enumerable so we can treat it as a list

### Strings as lists

We'll see how strings can be treated as lists even though thewy don't include Enumerable.

### `each` and similar methods

Let's explore the documentation for these methods.

## Official Documentation

- **[Comparable](http://ruby-doc.org/core-2.2.2/Comparable.html)**
- **[Hash](http://ruby-doc.org/core-2.2.2/Hash.html)**
- **[String](http://ruby-doc.org/core-2.2.2/String.html)**
- **[CSV](http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html)**
