Enum.each(1..16, fn i ->
    div3 = Integer.mod(i, 3) == 0
    div5 = Integer.mod(i, 5) == 0
    cond do
        div3 and div5 ->
            IO.puts "#{i} fizzbuzz"
        div3 ->
            IO.puts "#{i} fizz"
        div5 ->
            IO.puts "#{i} buzz"
        true ->
            0
    end
end)
