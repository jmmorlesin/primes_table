# PrimesTable

**Prints a multiplication table of (N) prime numbers using Elixir.**

## How to run the app

    This command will create the executable
    $ mix escript.build

    This will launch the application
    $ ./primes_table n
    Where n is a positive integer major than 0

##How to run the test

    Launch the test
    $ mix test

## What I'm pleased with

The code is scalable and developed with the re-usability like a reference point. Each method have the corresponding test and they work in an isolated way, so easily you can change some of the parts.

In order to improve the performance, I checked about different methods to know the primality of a number. See more in the References section.

Basically there are 2 modules with the main function:
  Prime
    Functionalities to check if the number is a prime, generate the next prime and generate an array with the N first primes.
  MultiplicationTable
    Functionalities to generate the multiplication table based on an array (This array could be from primes or another values) and print the table.
1 module for the entry point in the application:
  PrimesTable
    Use the other modules to print the primes table.
And 1 extra module:
  NumberUtils
    Check if the argument is valid for our purpose.

##What I would do with it if I had more time

Add documentation using the Elixir solution to create it.

Read more in depth about Elixir because it changes the way to think in order to do all the functionalities.

Definitely, the functionality to print the table requires refactoring. Currently it is using something similar to a constant 'length_cell' defined in the MultiplicationTable module and takes the value of 5, this means that 5 will be the length for each cell in the table. One option could be use some library like: https://github.com/djm/table_rex

Build a library to be used via web or an API.

##References

In order to find the method I used the trial division.

Reference: https://en.wikipedia.org/wiki/Primality_test
Short description: The simplest primality test is trial division: Given an input number n, check whether any prime integer m from 2 to √n evenly divides n (the division leaves noremainder). If n is divisible by any m then n is composite, otherwise it is prime.
