defmodule ListLength do
  @moduledoc """
  Ignite first challenge.
  """

  @spec call(list) :: non_neg_integer
  @doc """
  Calculates how many elements are in a list.

  ## Examples

      iex> ListLength.call([1, 2, 3, 4, 5, 6])
      6
      iex> ListLength.call([1, 2, 3, 4, 5, 6, 7, 8])
      8
      iex> ListLength.call([1, 1])
      2
      iex> ListLength.call([])
      0

  """

  # Nesse desafio, você deverá criar uma função que, dada uma lista de números (exemplo `[1, 3, 6, 43, 6]`), calcule, **recursivamente**, quantos elementos há na lista e retorne esse valor.

  # Para exemplo, temos a seguinte entrada e saída esperada pela função que recebe a lista:

  # ```bash
  # iex> ListLength.call([1, 2, 3, 5, 7])
  # ...> 5
  # ```
  def call(list), do: length(list, 0)

  defp length([], acc), do: acc

  defp length([_head | tail], acc) do
    acc = acc + 1

    length(tail, acc)
  end
end
