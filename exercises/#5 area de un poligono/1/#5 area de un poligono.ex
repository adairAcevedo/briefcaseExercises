poligon_area = fn
    {:circle, radio} -> 3.1416 * radio
    {:square, side} -> side * side
    {:triangle, base, heigth} -> base * heigth
    _ -> IO.puts "no existe funcion para calcular el poligono dado"
end


poligon_area.({:circle, 3})
poligon_area.({:square, 4})
poligon_area.({:triangle, 7, 8})

poligon_area.({:rec})
