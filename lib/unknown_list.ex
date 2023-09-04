defmodule UnknownList do
  # def get_position(_, []), do: nil
  def get_position(1, [head | _]), do: head
  def get_position(pos, [_ | tail]), do: get_position(pos - 1, tail)

  def get(1, [head | _]), do: [head]
  def get(pos, [head | tail]) do
    [head] ++ get(pos - 1, tail)
  end

  def remove(1, [_ | tail]), do: tail
  def remove(pos, [_ | tail]) do
    remove(pos - 1, tail)
  end

  def average(list) do
    # sum(list) / count(list)
    {count, sum} = count_and_sum(list, 0, 0)
    sum / count
  end

  # defp count([]), do: 0
  # defp count([_ | tail]), do: count(tail) + 1

  # defp sum([]), do: 0
  # defp sum([head | tail]), do: sum(tail) + head

  defp count_and_sum([], count, sum), do: {count, sum}
  defp count_and_sum([head | tail], count, sum) do
    count_and_sum(tail, count + 1, sum + head)
  end
end
