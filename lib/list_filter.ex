defmodule ListFilter do
  def call(list) do
    is_odd = fn
      {number, _} -> rem(number, 2) != 0
      :error -> false
    end

    Enum.count(list, fn x -> is_odd.(Integer.parse(x, 10)) end)
  end
end
