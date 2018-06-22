defmodule Algorithms.BubbleSort do
  @moduledoc """
  Search functions for the Algorithms project.
  """
  import List, only: [pop_at: 2, replace_at: 3, last: 1]

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

  def sort([a]) do
    [a]
  end

  def sort([h|t]) do
    _sort([h], t, 0, 1, [])
  end

  defp _sort([ha|ta], [hb|tb], position_base, position_next, accum) do
    cond do
      ha > hb -> _sort([hb] ++ ta ++ [ha], tb, position_base, position_next + 1, accum)
      true -> _sort([ha] ++ ta ++ [hb], tb, position_base, position_next + 1, accum)
    end
  end

  defp _sort(list, [], position_base, position_next, accum) when position_base + 1 == position_next do
    accum ++ [last(list)]
  end

  defp _sort(list, [], position_base, _, accum) do
    tail = tl(list)
    _sort([hd(tail)], tl(tail), position_base + 1, position_base + 2, accum ++ [hd(list)])
  end

end
