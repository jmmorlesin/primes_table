# PrimesTable

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `primes_table` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:primes_table, "~> 0.1.0"}]
    end
    ```

  2. Ensure `primes_table` is started before your application:

    ```elixir
    def application do
      [applications: [:primes_table]]
    end
    ```

- Launch the test
mix test

References

https://en.wikipedia.org/wiki/Primality_test

The simplest primality test is trial division: Given an input number n, check whether any prime integer m from 2 to √n evenly divides n (the division leaves noremainder). If n is divisible by any m then n is composite, otherwise it is prime.

TODO

documentation using elixir or mix?

MultiplicationTable is using length cell defined to 5. It will be better use the max length of the elements in the table instead of this number.

Test - Libraries or methods used:

http://elixir-lang.org/docs/stable/ex_unit/ExUnit.CaptureIO.html



Generate the app

mix escript.build

Run the app
$ ./primes_table 10
