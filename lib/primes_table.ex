defmodule PrimesTable do

  def main(args) do
    args
    |> process
  end

  def process([]) do
    IO.puts "No arguments given"
  end

  def process(number) do
    List.first(number)
    |> String.to_integer
    |> Prime.first_n_primes
    |> MultiplicationTable.generate_multiplication_table
    |> MultiplicationTable.print_table
  end

end
