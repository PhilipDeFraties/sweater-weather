module ObjectCheckers
  def forecast_checker(forecast)
    expect(forecast.class).to eq(Forecast)

    current_forecast_checker(forecast.current_weather)

    expect(forecast.daily_weather).to be_an(Array)
    forecast.daily_weather.each do |forecast|
      daily_forecast_checker(forecast)
    end

    expect(forecast.hourly_weather).to be_an(Array)
    forecast.hourly_weather.each do |forecast|
      hourly_forecast_checker(forecast)
    end
  end

  def current_forecast_checker(forecast)
    expect(forecast.class).to eq(CurrentForecast)
    expect(forecast.conditions).to be_a(String)
    expect(forecast.datetime).to be_a(Time)
    expect(forecast.feels_like).to be_a(Numeric)
    expect(forecast.humidity).to be_an(Integer)
    expect(forecast.icon).to be_a(String)
    expect(forecast.sunrise).to be_a(Time)
    expect(forecast.sunset).to be_a(Time)
    expect(forecast.temperature).to be_a(Numeric)
    expect(forecast.uvi).to be_a(Numeric)
    expect(forecast.visibility).to be_an(Integer)
  end

  def daily_forecast_checker(forecast)
    expect(forecast).to be_a(DailyForecast)
    expect(forecast.conditions).to be_a(String)
    expect(forecast.date).to be_a(String)
    expect(forecast.icon).to be_a(String)
    expect(forecast.max_temp).to be_a(Numeric)
    expect(forecast.min_temp).to be_a(Numeric)
    expect(forecast.sunrise).to be_a(Time)
    expect(forecast.sunset).to be_a(Time)
  end

  def hourly_forecast_checker(forecast)
    expect(forecast).to be_a(HourlyForecast)
    expect(forecast.conditions).to be_a(String)
    expect(forecast.icon).to be_a(String)
    expect(forecast.temperature).to be_a(Numeric)
    expect(forecast.time).to be_a(String)
    expect(forecast.wind_direction).to be_a(String)
    expect(forecast.wind_speed).to be_a(String)
  end

  def image_checker(image)
    expect(image).to be_a(Image)
    expect(image.location).to be_a(String)
    expect(image.url).to be_a(String)
    expect(image.id).to eq(nil)
    expect(image.credit).to be_a(Hash)
    expect(image.credit[:source]).to be_a(String)
    expect(image.credit[:source]).to eq("unsplash.com")
    expect(image.credit[:username]).to be_a(String)
  end

  def roadtrip_checker(roadtrip)
    expect(roadtrip).to be_a(RoadTrip)
    expect(roadtrip.end_city).to be_a(String)
    expect(roadtrip.start_city).to be_a(String)
    expect(roadtrip.travel_time).to be_a(String)
    expect(roadtrip.weather_at_eta).to be_a(Hash)
    expect(roadtrip.weather_at_eta[:temperature]).to be_a(Numeric)
    expect(roadtrip.weather_at_eta[:conditions]).to be_a(String)
  end
end
