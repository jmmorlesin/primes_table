defmodule Prime do

  def prime?(number) do
    case number do
      1 -> false
      2 -> true
      _ ->
           limit = round(:math.sqrt(number))
           !Enum.any?(2..limit, fn(x) -> rem(number, x) == 0 end)
    end
  end

  def next_prime(number) do
    number = number + 1
    if prime?(number) do
      number
    else
      next_prime(number)
    end
  end

  def first_n_primes(number) do
    n_primes([], number, 1)
  end

  defp n_primes(list, iterations, _start_point) when iterations == 0 do
    list
  end

  defp n_primes(list, iterations, start_point) do
    prime = next_prime(start_point)
    list = list ++ [prime]
    n_primes(list, iterations - 1, prime)
  end

end
