defmodule Algorithms.QuickSort do
  @moduledoc ~S"""
  Quick sort algorithm.
  """

  @doc """
  Single element list or Empty list returning the same.

  ## Examples

      iex> Algorithms.QuickSort.sort([])
      []
      iex> Algorithms.QuickSort.sort([1])
      [1]
      iex> Algorithms.QuickSort.sort([2, 3, 1])
      [1, 2, 3]

  """
  def sort([]) do
    []
  end

  def sort([h|t]) do
    _sort(t, [h], [])
  end

  defp _sort([], [a], accum) do
    accum ++ [a]
  end

  defp _sort(list, pivot, accum) do
    [ha|ta] = _sort(list, pivot)
    _sort(tl(ta), [hd(ta)], accum ++ [ha])
  end

  defp _sort([], list) do
    list
  end

  defp _sort([ha|ta], [hb|tb]) when ha > hb do
    _sort(ta, [hb|tb] ++ [ha])
  end

  defp _sort([ha|ta], accum) do
    _sort(ta, [ha|accum])
  end

end
