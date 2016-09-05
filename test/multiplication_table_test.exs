ExUnit.start

defmodule MultiplicationTableTest do
  use ExUnit.Case, async: true

  import MultiplicationTable

  test "Generate table" do
    list = [2,3,5]
    assert generate_multiplication_table(list) == [[' ',2,3,5], [2,4,6,10], [3,6,9,15], [5,10,15,25]]
  end

end
