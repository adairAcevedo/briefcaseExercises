
## Crea un programa que se encargue de calcular el aspect ratio de una
## imagen a partir de una url.
## - Url de ejemplo:
##   https://c4.wallpaperflare.com/wallpaper/553/854/434/1920x1080-px-digital-art-fantasy-art-landscape-long-hair-ryky-trees-wind-anime-death-note-hd-art-wallpaper-preview.jpg
 ## - Por ratio hacemos referencia por ejemplo a los "16:9" de una
 ##   imagen de 1920*1080px.
 ##

Mix.install([{:req, "~> 0.5.1"}, {:httpoison, "2.2.1"}, {:jason, "~> 1.2"}, {:ex_image_info, "~> 1.0"}])
defmodule AspectRatio do
    def calculate(img_url \\ "https://c4.wallpaperflare.com/wallpaper/553/854/434/1920x1080-px-digital-art-fantasy-art-landscape-long-hair-ryky-trees-wind-anime-death-note-hd-art-wallpaper-preview.jpg") do
        # img_url = "https://avatars.githubusercontent.com/u/148427510?s=400&v=4"

        heigth = 0
        width = 0

        {_status, content} = get_image(img_url)
        case ExImageInfo.info(content) do
            {_type, w, h, _variant} ->
                #resp.body |> ExImageInfo.info
                width = w
                heigth = h
                IO.puts "sizes width: #{width},  heigth: #{heigth}"
                m = Integer.gcd(heigth, width)
                IO.puts("aspect radio  #{width/m |> round() }:#{heigth/m |> round() }")
            _ ->
                {:error, "error conver image, url: #{img_url}, content: #{content}"}

        end

    end

    def get_image(img_url) do
      case HTTPoison.get(img_url) do
            {:ok, resp} when resp.status_code === 200  ->
                {:ok, resp.body}
            _ ->
                {:error, "error get the image"}
        end
    end
end
