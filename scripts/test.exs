Code.load_file("lib/qsort.ex")

alias Algorithms.QuickSort, as: QSort

resu = with list <- 1..1000 |> Enum.to_list(),
            count <- QSort.count(list),
            median <- Integer.floor_div(count, 2),
         do: QSort.element_at(list, median)

IO.inspect resu
