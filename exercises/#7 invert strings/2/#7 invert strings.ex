# el author realiza el ejercicio con una funcion recursiva y una funcion usando un for

defmodule InvertString do

  @spec reverse(String.t()) :: String.t()
  def reverse(text, result \\ "") when text != "" do
    lenght = String.length(text)-1
    {new_text, last_word} = String.split_at(text,lenght)
    reverse(new_text, result <> last_word)
  end

  def reverse(_text, result) do
    IO.puts "#{result}"
  end

end

InvertString.reverse("adair")

InvertString.reverse("hola mundo")

InvertString.reverse("anita lava la tina")
