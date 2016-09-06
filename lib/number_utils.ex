defmodule NumberUtils do

  def string_contains_valid_number?(str) do
    case Integer.parse(str) do
      {_num, ""} -> String.to_integer(str) > 0
      :error     -> false
    end
  end

end
