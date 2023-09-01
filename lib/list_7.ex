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

  # clauses with guards vs cond?
  def greater_sale_2(m, n, biggest \\ 0)
  def greater_sale_2(m, n, biggest) do
    curr = List6.sales(n)
    if m == n do
      maxi(curr, biggest)
    else
      greater_sale_2(m, n - 1, maxi(curr, biggest))
    end
  end

  def zero_sales_2(m, n) when m == n do
    if List6.sales(n) == 0, do: n, else: -1
  end
  def zero_sales_2(m, n) when m < n do
    if List6.sales(n) == 0, do: n, else: zero_sales_2(m, n - 1)
  end

  def find_week_2(m, n, s) when m == n do
    if List6.sales(n) == s, do: n, else: -1
  end
  def find_week_2(m, n, s) when m < n do
    if List6.sales(n) == s, do: n, else: find_week_2(m, n - 1, s)
  end

  def factorial(0), do: 1
  def factorial(n), do: factorial(n - 1) * n

  def product(m, n) when m == n, do: m
  def product(m, n) when m < n, do: product(m + 1, n) * m

  def fib(n, counter \\ 0, curr \\ 0, next \\ 1)
  def fib(n, counter, curr, next) do
    case n do
      ^counter -> curr
      _ -> fib(n, counter + 1, next, next + curr)
    end
  end
end
