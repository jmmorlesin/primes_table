ExUnit.start

defmodule MultiplicationTableTest do
  use ExUnit.Case, async: true

  import ExUnit.CaptureIO
  import MultiplicationTable

  test "Generate table" do
    list = [2,3,5]
    table = generate_multiplication_table(list)
    assert table == [[' ',2,3,5], [2,4,6,10], [3,6,9,15], [5,10,15,25]]
  end

  test "Check generated table" do
    list = [2,3,5]
    table = generate_multiplication_table(list)
    console = capture_io fn ->
      MultiplicationTable.print_table(table)
    end
    assert console ==
    """
    |     |    2|    3|    5|
    |    2|    4|    6|   10|
    |    3|    6|    9|   15|
    |    5|   10|   15|   25|
    """
  end

end
