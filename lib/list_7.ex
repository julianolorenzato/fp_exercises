defmodule List7 do
  alias List6

  def maxi(x, y) do
    cond do
      x > y -> x
      true -> y
    end
  end

  def greater_sale(n, biggest \\ 0)
  def greater_sale(0, biggest), do: biggest
  def greater_sale(n, biggest) do
    curr = List6.sales(n)
    greater_sale(n - 1, maxi(curr, biggest))
  end

  # utilitary fn
  defp get_n(n, biggest) do
    cond do
      List6.sales(n) != biggest -> get_n(n - 1, biggest)
      true -> n
    end
  end

  def max_sale(n) do
    biggest = greater_sale(n)
    get_n(n, biggest)
  end

  def zero_sales(0), do: -1
  def zero_sales(n) do
    case List6.sales(n) do
      0 -> n
      _ -> zero_sales(n - 1)
    end
  end

  def find_week(0, _), do: -1
  def find_week(n, s) do
    case List6.sales(n) do
      ^s -> n
      _ -> find_week(n - 1, s)
    end
  end

  def zero_sales_thin(n), do: find_week(n, 0)

  # clauses with guards vs cond
  # def greater_sale_2(m, n, biggest \\ 0)
  # def greater_sale_2(m, n, biggest) when m == n, do: biggest
  # def greater_sale_2(m, n, biggest) when n > m do
  #   curr = List6.sales(n)
  #   greater_sale_2(m, n - 1, maxi(curr, biggest))
  # end
end
