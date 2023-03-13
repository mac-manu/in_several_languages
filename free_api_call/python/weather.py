# -*- coding: utf-8 -*-

import requests
import json
from datetime import datetime, timedelta

# API key from OpenWeatherMap
API_KEY = '469121614bd3029a146c65d5856026ee'

# Base URL for OpenWeatherMap API
BASE_URL = 'http://api.openweathermap.org/data/2.5/forecast?'

# City ID for the location you want to get the weather for (you can find the ID on OpenWeatherMap's website)
city_id = '3121424'  # London, UK

# Complete URL for the API call
url = BASE_URL + 'id=' + city_id + '&appid=' + API_KEY

# print url
# Make the API call
response = requests.get(url)

# Parse the JSON data from the response
data = json.loads(response.text)

# Get the current time
now = datetime.now()

# Loop through the forecast data and print the temperature and weather description for the next 5 days
for i in range(5):
    # Calculate the date for this forecast (add i days to the current date)
    date = now + timedelta(days=i)

    # Get the forecast data for this date
    forecast = data['list'][i]

    # Get the temperature and weather description
    temp = forecast['main']['temp']
    desc = forecast['weather'][0]['description']

    # Print the forecast
    # print(f"{date.strftime('%A, %d %B %Y')}: {desc}, Temperature: {temp:.2f}ºC")
