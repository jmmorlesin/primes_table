defmodule PrimesTableTest do
  use ExUnit.Case
  doctest PrimesTable

  import ExUnit.CaptureIO

  test "Primes table with param 4" do
    console = capture_io fn ->
      PrimesTable.main(["4"])
    end

    assert console ==
    """
    |     |    2|    3|    5|    7|
    |    2|    4|    6|   10|   14|
    |    3|    6|    9|   15|   21|
    |    5|   10|   15|   25|   35|
    |    7|   14|   21|   35|   49|
    """
  end

  test "Primes table without params" do
    console = capture_io fn ->
      PrimesTable.main([])
    end

    assert console == "No arguments given\n"
  end

end
