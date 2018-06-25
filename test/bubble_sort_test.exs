defmodule SortingTest do
  use ExUnit.Case
  import Algorithms.BubbleSort, only: [sort: 1, swap: 3]

  doctest Algorithms.BubbleSort

  test "swaps two elements in a list" do
    assert swap([], 0, 2) == []
    assert swap([1], 0, 2) == [1]
    assert swap([3, 2, 1], 0, 2) == [1, 2, 3]
  end

  test "searches using buble sort for empty list" do
    assert sort([]) == []
  end

  test "searches using buble sort for 1 element" do
    assert sort([1]) == [1]
  end

  test "searches using buble sort for 2 elements" do
    assert sort([1, 1]) == [1, 1]
    assert sort([1, 2]) == [1, 2]
    assert sort([2, 1]) == [1, 2]
  end

  test "searches using buble sort for 3 elements" do
    assert sort([1, 1, 1]) == [1, 1, 1]
    assert sort([1, 1, 2]) == [1, 1, 2]
    assert sort([1, 2, 2]) == [1, 2, 2]
    assert sort([1, 2, 3]) == [1, 2, 3]
    assert sort([2, 3, 1]) == [1, 2, 3]
    assert sort([2, 1, 3]) == [1, 2, 3]
    assert sort([3, 1, 2]) == [1, 2, 3]
    assert sort([1, 3, 2]) == [1, 2, 3]
    assert sort([3, 2, 1]) == [1, 2, 3]
    assert sort([3, 1, 3]) == [1, 3, 3]
  end

  test "searches using buble sort for 9 elements" do
    assert sort([1, 4, 6, 0, 2, 5, 4, 9, 7]) == [0, 1, 2, 4, 4, 5, 6, 7, 9]
  end

  test "searches using buble sort for 1000 elements" do
    list = 1..1000 |> Enum.to_list()
    reverse_list = 1000..1 |> Enum.to_list()
    assert sort(reverse_list) == list
  end

end
