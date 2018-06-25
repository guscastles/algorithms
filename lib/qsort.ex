defmodule QuickSort do
  @moduledoc ~S"""
  Quick sort algorithm.
  """

  @doc """
  Single element list or Empty list returning the same.

  ## Empty list []

      iex> QuickSort.qsort([])
      []
      iex> QuickSort.qsort([1])
      [1]

  """
  def qsort([]) do
    []
  end

  def qsort([a]) do
    [a]
  end

  @doc ~S"""
  Main function for the quick sort algorithm.

  ## Example:

      iex> QuickSort.qsort([2, 3, 1])
      [1, 2, 3]

  """
  def qsort([h|t]) do
    _sort(t, [h])
  end

  defp _sort([], list) do
    list
  end

  defp _sort([ha|ta], [hb|tb]) do
    cond do
      ha > hb -> _sort(ta, [hb|tb] ++ [ha])
      true -> _sort(ta, [ha|[hb|tb]])
    end
  end

end
