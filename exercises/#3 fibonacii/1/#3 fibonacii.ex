Enum.reduce(1..50, %{prev: 0, next: 1}, fn value, map_acc ->
    acc = if value == 1 do
            0
        else
            map_acc.prev + map_acc.next
        end
    IO.puts("#{acc}")

    %{prev: map_acc.next, next: acc}
end)
