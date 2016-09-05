defmodule MultiplicationTable do

  def generate_multiplication_table(list) do
    final_table =  [  [' '] ++ Enum.map(list, fn(x) -> x end) ]
    final_table =  final_table ++ Enum.map(list, fn(x) ->
      [x] ++ Enum.map(list, fn(y) -> y * x end)
    end)
    final_table
  end

end
