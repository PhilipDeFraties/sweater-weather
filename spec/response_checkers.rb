module ResponseCheckers
  def forecast_response_checker(response)
    expect(response).to be_a(Hash)
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Hash)

    expect(response[:data]).to have_key(:id)
    expect(response[:data][:id]).to eq(nil)
    expect(response[:data]).to have_key(:type)
    expect(response[:data][:type]).to eq('forecast')
    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to be_a(Hash)

    expect(response[:data][:attributes]).to have_key(:current_weather)
    expect(response[:data][:attributes][:current_weather]).to be_a(Hash)

    expect(response[:data][:attributes][:current_weather]).to have_key(:datetime)
    expect(response[:data][:attributes][:current_weather][:datetime]).to be_a(String)
    expect(response[:data][:attributes][:current_weather]).to have_key(:sunrise)
    expect(response[:data][:attributes][:current_weather][:sunrise]).to be_a(String)
    expect(response[:data][:attributes][:current_weather]).to have_key(:sunset)
    expect(response[:data][:attributes][:current_weather][:sunset]).to be_a(String)
    expect(response[:data][:attributes][:current_weather]).to have_key(:temperature)
    expect(response[:data][:attributes][:current_weather][:temperature]).to be_a(Numeric)
    expect(response[:data][:attributes][:current_weather]).to have_key(:feels_like)
    expect(response[:data][:attributes][:current_weather][:feels_like]).to be_a(Numeric)
    expect(response[:data][:attributes][:current_weather]).to have_key(:humidity)
    expect(response[:data][:attributes][:current_weather][:humidity]).to be_a(Numeric)
    expect(response[:data][:attributes][:current_weather]).to have_key(:uvi)
    expect(response[:data][:attributes][:current_weather][:uvi]).to be_a(Numeric)
    expect(response[:data][:attributes][:current_weather]).to have_key(:visibility)
    expect(response[:data][:attributes][:current_weather][:visibility]).to be_a(Numeric)
    expect(response[:data][:attributes][:current_weather]).to have_key(:conditions)
    expect(response[:data][:attributes][:current_weather][:conditions]).to be_a(String)
    expect(response[:data][:attributes][:current_weather]).to have_key(:icon)
    expect(response[:data][:attributes][:current_weather][:icon]).to be_a(String)

    expect(response[:data][:attributes]).to have_key(:daily_weather)
    expect(response[:data][:attributes][:daily_weather]).to be_an(Array)
    expect(response[:data][:attributes][:daily_weather].count).to eq(5)
    response[:data][:attributes][:daily_weather].each do |day|
      expect(day).to have_key(:date)
      expect(day[:date]).to be_a(String)
      expect(day).to have_key(:sunrise)
      expect(day[:sunrise]).to be_a(String)
      expect(day).to have_key(:sunset)
      expect(day[:sunset]).to be_a(String)
      expect(day).to have_key(:max_temp)
      expect(day[:max_temp]).to be_a(Numeric)
      expect(day).to have_key(:min_temp)
      expect(day[:min_temp]).to be_a(Numeric)
      expect(day).to have_key(:conditions)
      expect(day[:conditions]).to be_a(String)
      expect(day).to have_key(:icon)
      expect(day[:icon]).to be_a(String)
    end

    expect(response[:data][:attributes]).to have_key(:hourly_weather)
    expect(response[:data][:attributes][:hourly_weather]).to be_an(Array)
    expect(response[:data][:attributes][:hourly_weather].count).to eq(8)
    response[:data][:attributes][:hourly_weather].each do |hour|
      expect(hour).to have_key(:time)
      expect(hour[:time]).to be_a(String)
      expect(hour).to have_key(:temperature)
      expect(hour[:temperature]).to be_a(Numeric)
      expect(hour).to have_key(:wind_speed)
      expect(hour[:wind_speed]).to be_a(String)
      expect(hour).to have_key(:wind_direction)
      expect(hour[:wind_direction]).to be_an(String)
      expect(hour).to have_key(:conditions)
      expect(hour[:conditions]).to be_a(String)
      expect(hour).to have_key(:icon)
      expect(hour[:icon]).to be_a(String)
    end
  end

  def image_response_checker(response)
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Hash)

    expect(response[:data]).to have_key(:type)
    expect(response[:data][:type]).to be_a(String)
    expect(response[:data][:type]).to eq('image')

    expect(response[:data]).to have_key(:id)
    expect(response[:data][:id]).to eq(nil)

    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to be_a(Hash)

    expect(response[:data][:attributes]).to have_key(:image)
    expect(response[:data][:attributes][:image]).to be_a(Hash)

    expect(response[:data][:attributes][:image]).to have_key(:location)
    expect(response[:data][:attributes][:image][:location]).to be_a(String)

    expect(response[:data][:attributes][:image]).to have_key(:image_url)
    expect(response[:data][:attributes][:image][:image_url]).to be_a(String)

    expect(response[:data][:attributes][:image]).to have_key(:credit)
    expect(response[:data][:attributes][:image][:credit]).to be_a(Hash)

    expect(response[:data][:attributes][:image][:credit]).to have_key(:source)
    expect(response[:data][:attributes][:image][:credit][:source]).to be_a(String)
    expect(response[:data][:attributes][:image][:credit][:source]).to eq('unsplash.com')

    expect(response[:data][:attributes][:image][:credit]).to have_key(:username)
    expect(response[:data][:attributes][:image][:credit][:username]).to be_a(String)
  end

  def error_response_checker(response)
    expect(response).to be_a(Hash)
    expect(response).to have_key(:message)
    expect(response[:message]).to be_a(String)
    expect(response).to have_key(:error)
    expect(response[:error]).to be_a(String)
  end

  def user_response_checker(response, user)
    expect(response).to be_a(Hash)
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Hash)
    expect(response[:data]).to have_key(:id)
    expect(response[:data][:id]).to be_a(String)
    expect(response[:data][:id]).to eq(user.id.to_s)
    expect(response[:data]).to have_key(:type)
    expect(response[:data][:type]).to be_a(String)
    expect(response[:data][:type]).to eq(user.class.to_s.downcase)
    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to be_a(Hash)
    expect(response[:data][:attributes]).to have_key(:email)
    expect(response[:data][:attributes][:email]).to be_a(String)
    expect(response[:data][:attributes][:email]).to eq(user.email)
    expect(response[:data][:attributes]).to have_key(:api_key)
    expect(response[:data][:attributes][:api_key]).to be_a(String)
    expect(response[:data][:attributes][:api_key]).to eq(user.api_key)

    expect(response[:data][:attributes]).to_not have_key(:password)
  end

  def road_trip_response_checker(response)
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Hash)

    expect(response[:data]).to have_key(:type)
    expect(response[:data][:type]).to be_a(String)
    expect(response[:data][:type]).to eq('road_trip')

    expect(response[:data]).to have_key(:id)
    expect(response[:data][:id]).to eq(nil)

    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to be_a(Hash)

    expect(response[:data][:attributes]).to have_key(:start_city)
    expect(response[:data][:attributes][:start_city]).to be_a(String)

    expect(response[:data][:attributes]).to have_key(:end_city)
    expect(response[:data][:attributes][:end_city]).to be_a(String)

    expect(response[:data][:attributes]).to have_key(:travel_time)
    expect(response[:data][:attributes][:travel_time]).to be_a(String)
    expect(Time.parse(response[:data][:attributes][:travel_time]).class).to eq(Time)

    expect(response[:data][:attributes]).to have_key(:weather_at_eta)
    expect(response[:data][:attributes][:weather_at_eta]).to be_a(Hash)

    expect(response[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
    expect(response[:data][:attributes][:weather_at_eta][:temperature]).to be_a(Numeric)

    expect(response[:data][:attributes][:weather_at_eta]).to have_key(:conditions)
    expect(response[:data][:attributes][:weather_at_eta][:conditions]).to be_a(String)
  end

  def error_trip_checker(response)
    expect(response).to be_a(Hash)
    expect(response).to have_key(:data)
    expect(response[:data]).to be_a(Hash)
    expect(response[:data]).to have_key(:id)
    expect(response[:data][:id]).to eq(nil)
    expect(response[:data]).to have_key(:type)
    expect(response[:data][:type]).to eq('road_trip')
    expect(response[:data]).to have_key(:attributes)
    expect(response[:data][:attributes]).to be_a(Hash)
    expect(response[:data][:attributes]).to have_key(:start_city)
    expect(response[:data][:attributes][:start_city]).to be_a(String)
    expect(response[:data][:attributes]).to have_key(:end_city)
    expect(response[:data][:attributes][:end_city]).to be_a(String)
    expect(response[:data][:attributes]).to have_key(:travel_time)
    expect(response[:data][:attributes][:travel_time]).to eq("impossible")
    expect(response[:data][:attributes]).to have_key(:weather_at_eta)
    expect(response[:data][:attributes][:weather_at_eta]).to be_a(Hash)
    expect(response[:data][:attributes][:weather_at_eta].empty?).to be(true)
  end
end
