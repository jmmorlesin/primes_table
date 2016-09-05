ExUnit.start

defmodule PrimeTest do
  use ExUnit.Case, async: true

  import Prime

  test "1 is not prime" do
    assert !prime?(1)
  end

  test "2 is prime" do
    assert prime?(2)
  end

  test "3 is prime" do
    assert prime?(3)
  end

  test "11 is prime" do
    assert prime?(11)
  end

  test "31 is prime" do
    assert prime?(31)
  end

  test "Multiples of 2 are not prime" do
    assert !prime?(4)
    assert !prime?(120)
  end

  test "Multiples of 3 are not prime" do
    assert !prime?(6)
    assert !prime?(3609)
  end

  test "Multiples of 5 are not prime" do
    assert !prime?(15)
    assert !prime?(45)
  end

  test "3 is the next prime from 2" do
    assert next_prime(2) == 3
  end

  test "4 is not the next prime from 3" do
  assert next_prime(3) != 4
  end

  test "17 is the next prime from 13" do
    assert next_prime(13) == 17
  end

  test "First 10 primes" do
    n_primes = first_n_primes(10)
    assert is_list(n_primes)
    assert length(n_primes) == 10
    assert n_primes == [2,3,5,7,11,13,17,19,23,29]
  end

end
