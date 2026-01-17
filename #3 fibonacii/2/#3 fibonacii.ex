# autor version, trasnformate in elixir by me
Enum.reduce(1..50, %{prev: 0, next: 1}, fn value, map_acc ->
    IO.puts("#{map_acc.prev}")
    acc = map_acc.prev + map_acc.next
    %{prev: map_acc.next, next: acc}
end)
