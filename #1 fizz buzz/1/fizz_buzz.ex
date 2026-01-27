
div3_msg = "fizz"
div5_msg = "buzz"
Enum.each(1..16, fn i ->
    div3 = Integer.mod(i, 3)
    div5 = Integer.mod(i, 5)
    cond do
        div3 == 0 and div5 == 0 ->
            IO.puts "#{div3_msg}#{div5_msg}"
        div3 == 0 ->
            IO.puts div3_msg
        div5 == 0 ->
            IO.puts div5_msg
        true ->
            0
    end
end)
