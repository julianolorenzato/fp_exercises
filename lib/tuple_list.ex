defmodule TupleList do
  def quadruple_sum([]), do: 0
  def quadruple_sum([hd | tl]) do
    quadruple_sum(tl) + elem(hd, 0) + elem(hd, 1) + elem(hd, 2) + elem(hd, 3)
  end

  def sum_tuples([]), do: 0
  def sum_tuples([hd | tl]) do
    left = elem(hd, 0)
    right = elem(hd, 1)
    sum = elem(left, 0) + elem(left, 1) + elem(right, 0) + elem(right, 1)
    sum_tuples(tl) + sum
  end

  def zipp(_, []), do: []
  def zipp([], _), do: []
  def zipp([hd1 | tl1], [hd2 | tl2]) do
    [{hd1, hd2}] ++ zipp(tl1, tl2)
  end

  def three_zipp([], _, _), do: []
  def three_zipp(_, [], _), do: []
  def three_zipp(_, _, []), do: []
  def three_zipp([hd1 | tl1], [hd2 | tl2], [hd3 | tl3]) do
    [{hd1, hd2, hd3}] ++ three_zipp(tl1, tl2, tl3)
  end

  defp unzip_left([]), do: []
  defp unzip_left([hd | tl]) do
    [elem(hd, 0)] ++ unzip_left(tl)
  end

  defp unzip_right([]), do: []
  defp unzip_right([hd | tl]) do
    [elem(hd, 1)] ++ unzip_right(tl)
  end

  def unzip(list) when is_list(list) do
    {unzip_left(list), unzip_right(list)}
  end
end
