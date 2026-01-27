first_word = IO.gets("write the first word: ") |> String.trim |> String.downcase
second_word = IO.gets("write the second word: ") |> String.trim |> String.downcase

IO.puts("#{first_word} #{second_word}")

if (first_word == second_word) do
  IO.puts "false"
else
  fw_reverse = String.reverse(first_word)
  is_same2 = String.equivalent?(fw_reverse, second_word)
  IO.puts(is_same2)
end
