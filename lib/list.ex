defmodule Algorithms.List do

  def count([h|t]) do
    _count([h|t], 0)
  end

  defp _count([], num_elements) do
    num_elements
  end

  defp _count([_|t], num_elements) do
    _count(t, num_elements + 1)
  end

  def element_at(list, position) when is_list(list) do
    cond do
      position >= count(list) || position < 0 -> :out_of_bounds
      true -> _element_at(list, position, 0)
    end
  end

  defp _element_at([h|t], position, counter) do
    cond do
      position == counter -> h
      true -> _element_at(t, position, counter + 1)
    end
  end

end
