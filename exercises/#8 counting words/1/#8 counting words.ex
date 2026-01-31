# 8 contando palabras

#
 # Crea un programa que cuente cuantas veces se repite cada palabra
 # y que muestre el recuento final de todas ellas.
 # - Los signos de puntuación no forman parte de la palabra.
 # - Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
 # - No se pueden utilizar funciones propias del lenguaje que
 #   lo resuelvan automáticamente.

defmodule ProcessText do
  def count_words(texto) do
    text = texto
      |> clean_text()
      |> String.replace(Regex.compile!("[^a-z0-9]"), " ")

    text_split = String.split(text," ", trim: true)

    Enum.reduce(text_split, [], fn value, acc ->
      clean_value = clean_text(value)

      count = Enum.reduce(text_split, 0, fn t1, acc ->
        t1_clean = clean_text(t1)
        if String.equivalent?(t1_clean, clean_value) do
          acc + 1
        else
          acc
        end
      end)

      acc ++ [%{"#{clean_value}" => count}]
    end)
    |> Enum.uniq()
    |> IO.inspect()

  end

  def clean_text(text) do
    String.normalize(text, :nfd)                 # split letter + mark
      |> String.downcase()
      |> String.replace(~r/\p{Mn}+/u, "")       # remove marks
  end
end

ProcessText.count_words("Crea un programa que cuente cuantas veces se repite cada palabra, No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente. PALABRA, AUTOMATICAMENTE")
