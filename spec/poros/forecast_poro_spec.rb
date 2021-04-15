require 'rails_helper'

RSpec.describe 'Forecast' do
  xit "creates a forecast object from weather hash" do
 # :daily_weather=>
 #  [#<DailyForecast:0x00007fec84e029a0
 #    @conditions="few clouds",
 #    @date="2021-04-02",
 #    @icon="02d",
 #    @max_temp=71.15,
 #    @min_temp=47.01,
 #    @sunrise=2021-04-02 06:41:47 -0600,
 #    @sunset=2021-04-02 19:24:39 -0600>,
 #   #<DailyForecast:0x00007fec84e02798
 #    @conditions="clear sky",
 #    @date="2021-04-03",
 #    @icon="01d",
 #    @max_temp=74.37,
 #    @min_temp=49.14,
 #    @sunrise=2021-04-03 06:40:11 -0600,
 #    @sunset=2021-04-03 19:25:38 -0600>,
 #   #<DailyForecast:0x00007fec84e02590
 #    @conditions="light rain",
 #    @date="2021-04-04",
 #    @icon="10d",
 #    @max_temp=74.08,
 #    @min_temp=52.93,
 #    @sunrise=2021-04-04 06:38:36 -0600,
 #    @sunset=2021-04-04 19:26:38 -0600>,
 #   #<DailyForecast:0x00007fec84e02388
 #    @conditions="broken clouds",
 #    @date="2021-04-05",
 #    @icon="04d",
 #    @max_temp=75.2,
 #    @min_temp=53.13,
 #    @sunrise=2021-04-05 06:37:01 -0600,
 #    @sunset=2021-04-05 19:27:37 -0600>,
 #   #<DailyForecast:0x00007fec84e02180
 #    @conditions="clear sky",
 #    @date="2021-04-06",
 #    @icon="01d",
 #    @max_temp=70.99,
 #    @min_temp=53.06,
 #    @sunrise=2021-04-06 06:35:27 -0600,
 #    @sunset=2021-04-06 19:28:37 -0600>],
 # :hourly_weather=>
 #  [#<HourlyForecast:0x00007fec8e453940
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=54.37,
 #    @time="21:00:00",
 #    @wind_direction="SSE",
 #    @wind_speed="2.89">,
 #   #<HourlyForecast:0x00007fec8e453530
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=56.62,
 #    @time="22:00:00",
 #    @wind_direction="WSW",
 #    @wind_speed="3.78">,
 #   #<HourlyForecast:0x00007fec8e453120
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=56.46,
 #    @time="23:00:00",
 #    @wind_direction="W",
 #    @wind_speed="4.12">,
 #   #<HourlyForecast:0x00007fec8e452d10
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=55.49,
 #    @time="00:00:00",
 #    @wind_direction="SW",
 #    @wind_speed="2.46">,
 #   #<HourlyForecast:0x00007fec8e452900
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=54.28,
 #    @time="01:00:00",
 #    @wind_direction="SSW",
 #    @wind_speed="1.16">,
 #   #<HourlyForecast:0x00007fec8e4524f0
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=53.19,
 #    @time="02:00:00",
 #    @wind_direction="SSW",
 #    @wind_speed="3.31">,
 #   #<HourlyForecast:0x00007fec8e4520e0
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=52.07,
 #    @time="03:00:00",
 #    @wind_direction="SW",
 #    @wind_speed="4.5">,
 #   #<HourlyForecast:0x00007fec8e451cd0
 #    @conditions="clear sky",
 #    @icon="01n",
 #    @temperature=51.33,
 #    @time="04:00:00",
 #    @wind_direction="SW",
 #    @wind_speed="4.43">]}
    forecast = Forecast.new(weather_hash)
    forecast_checker(forecast)
  end
end
