defmodule MultiplicationTable do

  @length_cell 5

  def generate_multiplication_table(list) do
    final_table =  [  [' '] ++ Enum.map(list, fn(x) -> x end) ]
    final_table =  final_table ++ Enum.map(list, fn(x) ->
      [x] ++ Enum.map(list, fn(y) -> y * x end)
    end)
    final_table
  end

  def print_table(table) do
    Enum.each(table, fn(line) -> print_line(line)  end)
  end


  defp add_space(content, number) when number <= 0 do
    content
  end

  defp add_space(content, number) do
    " " <> add_space(content, number - 1)
  end

  def cell(content) when content == ' ' do
    add_space("", @length_cell)
  end

  def cell(content) do
    content = Integer.to_string(content)
    spaces = @length_cell - String.length(content)
    add_space(content, spaces)
  end

  def print_line(line) do
    lineString = ["|"] ++ Enum.map(line, fn(x) ->
      cell(x) <> "|"
      end)
    IO.puts(lineString)
  end

end
