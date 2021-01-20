module ObjectCheckers
  def forecast_checker(object)
    expect(object.class).to eq(Forecast)

    current_forecast_checker(object.current_weather)

    expect(object.daily_weather).to be_an(Array)
    object.daily_weather.each do |object|
      daily_forecast_checker(object)
    end

    expect(object.hourly_weather).to be_an(Array)
    object.hourly_weather.each do |object|
      hourly_forecast_checker(object)
    end
  end

  def current_forecast_checker(object)
    expect(object.class).to eq(CurrentForecast)
    expect(object.conditions).to be_a(String)
    expect(object.datetime).to be_a(Time)
    expect(object.feels_like).to be_a(Numeric)
    expect(object.humidity).to be_an(Integer)
    expect(object.icon).to be_a(String)
    expect(object.sunrise).to be_a(Time)
    expect(object.sunset).to be_a(Time)
    expect(object.temperature).to be_a(Numeric)
    expect(object.uvi).to be_a(Numeric)
    expect(object.visibility).to be_an(Integer)
  end

  def daily_forecast_checker(object)
    expect(object).to be_a(DailyForecast)
    expect(object.conditions).to be_a(String)
    expect(object.date).to be_a(String)
    expect(object.icon).to be_a(String)
    expect(object.max_temp).to be_a(Numeric)
    expect(object.min_temp).to be_a(Numeric)
    expect(object.sunrise).to be_a(Time)
    expect(object.sunset).to be_a(Time)
  end

  def hourly_forecast_checker(object)
    expect(object).to be_a(HourlyForecast)
    expect(object.conditions).to be_a(String)
    expect(object.icon).to be_a(String)
    expect(object.temperature).to be_a(Numeric)
    expect(object.time).to be_a(String)
    expect(object.wind_direction).to be_a(String)
    expect(object.wind_speed).to be_a(String)
  end

  def image_checker(object)
    expect(object).to be_a(Image)
    expect(object.location).to be_a(String)
    expect(object.url).to be_a(String)
    expect(object.id).to eq(nil)
    expect(object.credit).to be_a(Hash)
    expect(object.credit[:source]).to be_a(String)
    expect(object.credit[:source]).to eq("unsplash.com")
    expect(object.credit[:username]).to be_a(String)
  end

  def roadtrip_checker(object)
    expect(object).to be_a(RoadTrip)
    expect(object.end_city).to be_a(String)
    expect(object.start_city).to be_a(String)
    expect(object.travel_time).to be_a(String)
    expect(object.weather_at_eta).to be_a(Hash)
    expect(object.weather_at_eta[:temperature]).to be_a(Numeric)
    expect(object.weather_at_eta[:conditions]).to be_a(String)
  end

  def error_trip_obj_checker(object)
    expect(object).to be_a(ErrorTrip)
    expect(object.end_city).to be_a(String)
    expect(object.start_city).to be_a(String)
    expect(object.travel_time).to be_a(String)
    expect(object.travel_time).to eq('impossible')
    expect(object.weather_at_eta).to be_a(Hash)
    expect(object.weather_at_eta.empty?).to eq(true)
  end
end
