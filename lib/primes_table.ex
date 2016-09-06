defmodule PrimesTable do

  def main(args) do
    args
    |> process
  end


  defp invalid_param() do
    IO.puts "No valid param"
    usage()
  end

  defp usage() do
    IO.puts "Usage: primes_table n"
    IO.puts "Where n is a positive number"
  end

  defp process([]) do
    IO.puts "No arguments given"
    usage()
  end

  defp process(number) do
    num = List.first(number)
    if (NumberUtils.string_contains_valid_number?(num)) do
      String.to_integer(num)
      |> Prime.first_n_primes
      |> MultiplicationTable.generate_multiplication_table
      |> MultiplicationTable.print_table
    else
      invalid_param()
    end
  end

end
