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

  # TO DO
  # def get_biggests(_n, [], biggests), do: biggests
  # def get_biggests(n, [head | tail], biggests) do
  #   [curr | rest] = biggests

  #   cond do
  #     head > curr -> get_biggests(n - 1, tail, [head] ++ rest)
  #     true -> get_biggests(n, tail, biggests)
  #   end
  # end

  # defp add_to_biggests(n, biggests, num) do
  #   cond do
  #     length(biggests) < n ->
  #     true == 2 -> 2
  #   end
  # end

  # def count_biggests

  def interleave(list1, []), do: list1
  def interleave([], list2), do: list2
  def interleave([hd | tl], list2) do
    [hd] ++ interleave(list2, tl)
  end

  def dupli([]), do: []
  def dupli([hd | tl]) do
    [hd, hd] ++ dupli(tl)
  end

  def repli(_n, []), do: []
  def repli(n, [hd | tl]) do
    concat_n(n, hd) ++ repli(n, tl)
  end

  defp concat_n(0, _elem), do: []
  defp concat_n(n, elem) when is_number(n) do
    [elem] ++ concat_n(n - 1, elem)
  end

  def drop_every(_pos, []), do: []
  def drop_every(pos, [hd | tl]) do
    case pos do
      1 -> tl
      _ -> [hd] ++ drop_every(pos - 1, tl)
    end
  end

  # def split(1, list), do: {[], list}
  # def split(n, [hd | tl]) do
  #   {[hd] ++ split(n - 1, tl), []}
  # end
end
