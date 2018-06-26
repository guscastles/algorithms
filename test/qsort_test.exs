defmodule QuickSortTest do
  @moduledoc ~S"""
  Test module for the quick sort algorithm.
  """
  use ExUnit.Case
  import Algorithms.QuickSort

  doctest Algorithms.QuickSort

  test "sorts a list with two elements" do
    assert sort([1, 1]) == [1, 1]
    assert sort([1, 2]) == [1, 2]
    assert sort([2, 1]) == [1, 2]
  end

  test "sorts a list with three elements" do
    assert sort([1, 1, 1]) == [1, 1, 1]
    assert sort([1, 1, 2]) == [1, 1, 2]
    assert sort([1, 2, 2]) == [1, 2, 2]
    assert sort([1, 2, 3]) == [1, 2, 3]
    assert sort([2, 1, 3]) == [1, 2, 3]
    assert sort([2, 3, 1]) == [1, 2, 3]
    assert sort([3, 2, 1]) == [1, 2, 3]
    assert sort([1, 3, 2]) == [1, 2, 3]
    assert sort([3, 1, 2]) == [1, 2, 3]
  end

  test "sorts a list with four elements" do
    assert sort([4, 1, 3, 2]) == [1, 2, 3, 4]
  end

end
