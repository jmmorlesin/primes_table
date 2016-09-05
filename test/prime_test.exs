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

end
