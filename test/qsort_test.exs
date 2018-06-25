defmodule QuickSortTest do
  @moduledoc ~S"""
  Test module for the quick sort algorithm.
  """
  use ExUnit.Case
  import QuickSort

  doctest QuickSort

  test "sorts a list with two elements" do
    assert qsort([1, 1]) == [1, 1]
    assert qsort([1, 2]) == [1, 2]
    assert qsort([2, 1]) == [1, 2]
  end

  test "sorts a list with three elements" do
    assert qsort([1, 1, 1]) == [1, 1, 1]
    assert qsort([1, 1, 2]) == [1, 1, 2]
    assert qsort([1, 2, 2]) == [1, 2, 2]
    assert qsort([1, 2, 3]) == [1, 2, 3]
    assert qsort([2, 1, 3]) == [1, 2, 3]
    assert qsort([2, 3, 1]) == [1, 2, 3]
    assert qsort([3, 2, 1]) == [1, 2, 3]
    assert qsort([3, 1, 2]) == [1, 2, 3]
    assert qsort([1, 3, 2]) == [1, 2, 3]
  end

end
