defmodule List8 do
  def tuples_sum({a, b}, {x, y}) do
    a + b + x + y
  end

  def shift({a, b}, c) do
    {a, {b, c}}
  end

  def min_and_max(n1, n2, n3) do
    min = cond do
      n1 <= n2 and n1 <= n3 -> n1
      n2 <= n3 and n2 <= n1 -> n2
      n3 <= n2 and n3 <= n1 -> n3
    end

    max = cond do
      n1 >= n2 and n1 >= n3 -> n1
      n2 >= n3 and n2 >= n1 -> n2
      n3 >= n2 and n3 >= n1 -> n3
    end

    {min, max}
  end

  def zero_sales(n) do
    s = List7.zero_sales(n)
    if s == -1, do: {-1, false}, else: {s, true}
  end

  def get_title(book), do: book.title
  def get_author(book), do: book.author
  def get_isbn(book), do: book.isbn
end
