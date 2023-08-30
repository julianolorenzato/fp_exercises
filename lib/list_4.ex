defmodule List4 do
  def double_list([]), do: []
  def double_list([head | tail]) do
    [head * 2 | double_list(tail)]
  end

  def list_length([]), do: 0
  def list_length([_ | tail]), do: 1 + list_length(tail)

  # Tail call optimization correto?
  def list_length_tco(list, acc \\ 0)
  def list_length_tco([], acc), do: acc
  def list_length_tco([_ | tail], acc) do
   list_length_tco(tail, acc + 1)
  end

  def list_product([]), do: 1
  def list_product([head | tail]) do
    head * list_product(tail)
  end

  def list_and([]), do: true
  def list_and([head | tail]) do
    head and list_and(tail)
  end

  def list_concat([]), do: []
  def list_concat([head | tail]) do
    head ++ list_concat(tail)
  end

  def list_reverse([]), do: []
  def list_reverse([head | tail]) do
    list_reverse(tail) ++ [head]
  end
end

defmodule List4WithAbstractions do
  def double_list(list) do
    Enum.map(list, fn x -> x * 2 end)
  end

  def list_length(list) do
    Enum.count(list)
  end

  def list_product(list) do
    Enum.reduce(list, 1, fn x, acc -> x * acc end)
  end

  def list_and(list) do
    Enum.reduce(list, true, fn x, acc -> x and acc end)
  end

  def list_concat(list) do
    Enum.concat(list)
  end

  def list_reverse(list) do
    Enum.reverse(list)
  end
end
