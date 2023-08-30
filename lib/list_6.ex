defmodule List6 do
  def the_four_are_equal?(one, two, three, four) do
    one == two and two == three and three == four
  end

  def how_much_are_equal(one, two, three) do
    # ?
  end

  def all_different?(st, nd, rd) do
    # [st, nd, rd]
    # |> Eum.map(fn x ->
    #   [st, nd, rd]
    #   |> Enum.reduce(fn y -> x != y end)
    # end)
  end
end
