defmodule List6 do
  def the_four_are_equal?(one, two, three, four) do
    one == two and two == three and three == four
  end

  def how_much_are_equal(one, two, three) do
    cond do
      one == two and two == three -> 3
      one != two and two != three and one != three -> 1
      true -> 2
    end
  end

  def all_different?(st, nd, rd) do
    st != nd and st != rd and nd != rd
  end

  def power_of_two(n) do
    n ** n
  end

  def power_of_four(n) do
    n
    |> power_of_two()
    |> power_of_two()
  end

  def sales(n) when n <= 8 and n > 0 do
    [23, 488, 94, 423, 765, 24, 0, 53] |> Enum.at(n - 1)
  end

  def total_sales(0), do: 0
  def total_sales(n) do
    sales(n) + total_sales(n - 1)
  end
end
