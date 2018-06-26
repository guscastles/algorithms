defmodule Algorithms.QuickSort do
  @moduledoc ~S"""
  Quick sort algorithm.
  """
  alias Algorithms.List, as: Lst

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

  def sort(list) when is_list(list) do
    with median_position <- list |> _median(),
         {pivot, initial_list} <- list |> _pivot(median_position),
      do: _sort(initial_list, [pivot], [])
  end

  defp _pivot(list, position) do
    list 
    |> List.pop_at(position)
  end

  defp _median(list) do
    (list 
     |> Lst.count 
     |> Integer.floor_div(2)) - 1
  end

  defp _sort([], [a], accum) do
    accum ++ [a]
  end

  defp _sort(list, pivot, accum) do
    [ha|ta] = _sort(list, pivot)
    {next_pivot, next_list} = with median <- ta |> _median(),
                                do: ta |> _pivot(median)
    _sort(next_list, [next_pivot], accum ++ [ha])
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
