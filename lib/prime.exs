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

end
