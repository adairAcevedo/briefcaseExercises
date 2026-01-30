 # Crea un programa que invierta el orden de una cadena de texto
 # sin usar funciones propias del lenguaje que lo hagan de forma automática.
 # - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 #

# example with anonymous function
invert = fn (value) ->
    length = String.length(value) -1

    Enum.reduce(0..length, "", fn index, acc ->
        acc <> String.at(value,length-index)
    end)
    |> IO.puts
end


invert.("hola mundo")

invert.("anitalavalatina")
