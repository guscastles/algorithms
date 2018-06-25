defmodule Algorithms.BubbleSort do
  @moduledoc """
  Search functions for the Algorithms project.
  """
  import List, only: [pop_at: 2, replace_at: 3]

  def swap([], _, _) do
    []
  end

  def swap([a], _, _) do
    [a]
  end

  def swap(list, first_position, second_position) when is_list(list) do
    list |> replace_at(first_position, _fetch(list, second_position))
         |> replace_at(second_position, _fetch(list, first_position))
  end

  defp _fetch(list, position) do
    {element, _} = pop_at(list, position)
    element
  end

  def sort([]) do
    []
  end

  @doc ~S"""
  Sorts a given list using the Bubble Sort algorithm.

  # Examples

      iex> Algorithms.BubbleSort.sort([4, 3, 1, 2])
      [1, 2, 3, 4]

  """
  def sort([h|t]) do
    _sort([h], t, [])
  end

  defp _sort([ha|ta], [hb|tb], accum) when ha > hb do
    _sort([hb|ta] ++ [ha], tb, accum)
  end

  defp _sort([ha|ta], [hb|tb], accum) do
    _sort([ha|ta] ++ [hb], tb, accum)
  end

  defp _sort([a], [], accum) do
    accum ++ [a]
  end

  defp _sort(list, [], accum) do
    tail = tl(list)
    _sort([hd(tail)], tl(tail), accum ++ [hd(list)])
  end

end
