defmodule Weather do
  use HTTPoison.Base

  def base_url, do: "https://api.openweathermap.org/data/2.5/forecast"

  def get_weather(city, api_key) do
    url = base_url() <> "?q=#{city}&appid=#{api_key}&units=metric"
    response = get(url)
    case response.code do
      200 -> parse_response(response.body)
      _   -> {:error, "Failed to retrieve weather data"}
    end
  end

  defp parse_response(body) do
    case Poison.decode(body) do
      {:ok, %{"list" => list}} ->
        list
        |> Enum.take(10)  # data days 
        |> Enum.map(fn day ->
          %{dt: dt, main: %{temp: temp}} = day
          {Date.utc_from_unix(dt), temp}
        end)
      _ -> {:error, "Failed to parse weather data"}
    end
  end
end
