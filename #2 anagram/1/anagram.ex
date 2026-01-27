first_word = IO.gets("write the first word: ") |> String.trim
second_word = IO.gets("write the second word: ") |> String.trim

IO.puts("#{first_word} #{second_word}")
if (first_word == second_word) do
  IO.puts "false"
else
  fw_reverse = String.reverse(first_word)
  is_same = String.match?(fw_reverse, ~r/#{second_word}/)
  IO.puts(is_same)
end
