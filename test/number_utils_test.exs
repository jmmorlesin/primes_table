ExUnit.start

defmodule NumberUtilsTest do
  use ExUnit.Case, async: true

  import NumberUtils

  test "1 is integer" do
    assert string_contains_valid_number?("1")
  end

  test "5 is integer" do
    assert string_contains_valid_number?("5")
  end

  test "0 is not a valid number param" do
    assert !string_contains_valid_number?("0")
  end

  test "-1 is integer negative" do
    assert !string_contains_valid_number?("-1")
  end

end
