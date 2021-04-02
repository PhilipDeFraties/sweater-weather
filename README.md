# Sweater-Weather

## Contents
  * [Overview](#overview)
  * [Learning Goals](#learning-goals)
  * [Installation and Database Setup](#installation_and_database_setup)
  * [Schema](#schema)
  * [Testing](#testing)
  * [Endpoints](#endpoints)
  * [Gems Utilized](#gems_utilized)
  * [Future Improvements](#future_improvements)
  * [Contributor](#contributer)

## Overview
  Sweater-Weather is a Rails API that consumes multiple third party API's to provide weather data for a location a person is travelling via search request as well as images and travel time. Requests and responses are in JSON format.

## Learning Goals
  * Expose an API
  * Conglomerate data from multiple third party API's to provide customized responses with only specifically intended information
  * Use serializers to format JSON responses
  * Test API exposure

## Installation and Database Setup

  ```
    % git clone https://github.com/PhilipDeFraties/sweater-weather.git
    % cd sweater-weather  
    % bundle install
    % rails db:{create,migrate}
    % bundle exec figaro install
  ```

### You will need to sign up for multiple API Keys and set them as ENV variable in the config/application.yml file created by figaro:
  * MapQuest API: https://developer.mapquest.com/documentation/
  * OpenWeatherMap API: https://openweathermap.org/api
  * Unsplash API: https://api.unsplash.com

## Schema
 <img src="https://github.com/PhilipDeFraties/sweater-weather/blob/main/images/sweater-weather%20schema.png" width="450" height="350">

## Testing
  The program was developed through strict Test-Driven Development, utilizing
  RSpec for integration and unit testing. Simplecov was used to monitor test
  coverage. At the time of writing, test coverage is at 99.67%.
  To run the test suite and see a coverage report enter the following commands
  into your terminal:

  ```
    % bundle exec rspec
    % open coverage/index.html
  ```
  The VCR and Webmock gems were utilized to reduce the amount of live requests to third party API's. This means when the test suite is first run, for each test,   it will 'record' the responses and utilize the recorded response the next time the test is run.

  Continuous integration with Circle CI

## Endpoints
### Forecast
  GET http://localhost:3000/api/v1/forecast
  params: 'location': 'denver,co'

  #### Example Respons:
  ```

  {:data=>
  {:id=>nil,
   :type=>"forecast",
   :attributes=>
    {:current_weather=>
      {:datetime=>"2021-01-19T13:58:50.000-07:00",
       :sunrise=>"2021-01-19T07:17:07.000-07:00",
       :sunset=>"2021-01-19T17:04:03.000-07:00",
       :temperature=>38.1,
       :feels_like=>28.83,
       :humidity=>27,
       :uvi=>1.16,
       :visibility=>10000,
       :conditions=>"overcast clouds",
       :icon=>"04d"},
     :daily_weather=>
      [{:date=>"2021-01-19", :sunrise=>"2021-01-19T07:17:07.000-07:00", :sunset=>"2021-01-19T17:04:03.000-07:00", :max_temp=>38.1, :min_temp=>28.22, :conditions=>"overcast clouds", :icon=>"04d"},
       {:date=>"2021-01-20", :sunrise=>"2021-01-20T07:16:35.000-07:00", :sunset=>"2021-01-20T17:05:12.000-07:00", :max_temp=>50.38, :min_temp=>32.04, :conditions=>"clear sky", :icon=>"01d"},
       {:date=>"2021-01-21", :sunrise=>"2021-01-21T07:16:00.000-07:00", :sunset=>"2021-01-21T17:06:21.000-07:00", :max_temp=>46.67, :min_temp=>34.2, :conditions=>"clear sky", :icon=>"01d"},
       {:date=>"2021-01-22", :sunrise=>"2021-01-22T07:15:24.000-07:00", :sunset=>"2021-01-22T17:07:31.000-07:00", :max_temp=>44.08, :min_temp=>31.53, :conditions=>"scattered clouds", :icon=>"03d"},
       {:date=>"2021-01-23", :sunrise=>"2021-01-23T07:14:45.000-07:00", :sunset=>"2021-01-23T17:08:41.000-07:00", :max_temp=>38.82, :min_temp=>28.02, :conditions=>"light snow", :icon=>"13d"}],
     :hourly_weather=>
      [{:time=>"13:00:00", :temperature=>38.1, :wind_speed=>"5.88", :wind_direction=>"SSE", :conditions=>"overcast clouds", :icon=>"04d"},
       {:time=>"14:00:00", :temperature=>36.93, :wind_speed=>"5.19", :wind_direction=>"SE", :conditions=>"overcast clouds", :icon=>"04d"},
       {:time=>"15:00:00", :temperature=>36.84, :wind_speed=>"4.21", :wind_direction=>"ESE", :conditions=>"broken clouds", :icon=>"04d"},
       {:time=>"16:00:00", :temperature=>36.79, :wind_speed=>"2.39", :wind_direction=>"ENE", :conditions=>"scattered clouds", :icon=>"03d"},
       {:time=>"17:00:00", :temperature=>35.24, :wind_speed=>"3.36", :wind_direction=>"NNE", :conditions=>"scattered clouds", :icon=>"03d"},
       {:time=>"18:00:00", :temperature=>33.94, :wind_speed=>"2.77", :wind_direction=>"N", :conditions=>"clear sky", :icon=>"01n"},
       {:time=>"19:00:00", :temperature=>33.06, :wind_speed=>"1.25", :wind_direction=>"WNW", :conditions=>"clear sky", :icon=>"01n"},
       {:time=>"20:00:00", :temperature=>32.47, :wind_speed=>"1.43", :wind_direction=>"NW", :conditions=>"clear sky", :icon=>"01n"}]}}}

 ```

 ### Background Image
   Returns single image for location
  ```
  GET 'http://localhost:3000/api/v1/backgrounds'
  params: 'location': 'denver,co'
  ```
  
  #### Example Respons:
  
  ```
  {:data=>
   {:id=>nil,
    :type=>"image",
    :attributes=>
     {:image=>
       {:location=>"denver, co",
        :image_url=>
         "https://images.unsplash.com/photo-1600041161228-519e6dd27bac?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxOTkzODZ8MHwxfHNlYXJjaHwxfHxkZW52ZXIsJTIwY298ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=1080",
        :credit=>{:source=>"unsplash.com", :username=>"mikekilcoyne"}}}}}
  ```

 ### Create User

  * sending a post request to this route creates a user and an API key is sent in the response, this key is required as a param to utilize the roadtrip endpoint     as seen below
   
   ```
   POST 'http://localhost:3000/api/v1/users'
   body = { email: "whatever@example.com",
                    password: "password",
                    password_confirmation: "password" }
   ```
   
   #### Example Response:
   
   ```
   {:data=>{:id=>"300", :type=>"user", :attributes=>{:email=>"whatever@example.com", :api_key=>"chGh6NP1zrXMcTPlHz1qDAtt"}}}
   ```

 ### Login
  * Currently login is not required to access any of the endpoints, however an API key is required for the roadtrip endpoint, sending a post request to the login     endpoint returns a users API key so that creating a new user is not necessary if a user has already made an account.

  ```
  POST 'http://localhost:3000/api/v1/sessions'
  body = { email: "whatever@example.com",
                      password: "password" }
  ```
  
  #### Example Response:
  
  ```
  {:data=>{:id=>"305", :type=>"user", :attributes=>{:email=>"whatever@example.com", :api_key=>"2GgPKyQ2eGPguOEZj8jUpAtt"}}}

  ```

 ### RoadTrip
   Takes origin and destination included in body of request and returns travel-time of trip as well as expected weather upon arrival.
   As noted above, it is first necessary to create a user via post request or login in order to obtain an API key which is need to access the protected RoadTrip endpoint
   ```
   POST 'http://localhost:3000/api/v1/road_trip'
   body = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": "API Key"
      }
   ```
   #### Example Response:
   
   ```
   {:data=>
  {:id=>nil,
   :type=>"road_trip",
   :attributes=>
    {:start_city=>"Denver, CO", :end_city=>"Pueblo, CO", :travel_time=>"01:44:22", :weather_at_eta=>{:temperature=>28.13, :conditions=>"clear sky"}}}}
   ```
   
  ### Foodie
   Takes origin, destination, and cuisine included in body of request and returns travel-time of trip as well, expected weather upon arrival, and nearest      restaurant   serving requested cuisine that will be open upon arrival. 
   
   ```
   GET 'http://localhost:3000/api/v1/foodie'
   body = {
        "start": "denver,co",
        "end": "pueblo,co",
        "search": "italian"
      }
   ```
   #### Example Response:


   ```
   {
    "data": {
        "id": null,
        "type": "foodie",
        "attributes": {
            "end_location": "Pueblo, CO",
            "travel_time": "01:44:22",
            "forecast": {
                "summary": "clear sky",
                "temperature": "60.51"
            },
            "restaurant": {
                "name": "Angelo's Pizza Parlor",
                "address": "105 E Riverwalk, Pueblo 81003"
            }
        }
    }
}
    ```



   #### Example Response:
## Gems Utilized
  * gem 'pry'
  * gem 'fast_jsonapi'
  * gem 'rspec-rails'
  * gem 'shoulda-matchers'
  * gem 'launchy'
  * gem 'simplecov'
  * gem 'webmock'
  * gem 'vcr'
  * gem 'activerecord-import'


## Future Improvements
  * Sad paths were accounted and tested for in several places, however there is no sad path taken into account for mapquest finding no results for a query.

  * Currently, the way the road trip endpoint works is to determine the length of time it would take the user to drive from their starting location and returns       the weather for their destination if they were to depart at that given moment. It would make more sense to add an additional query parameter to indicate when     the user intends on departing and adjust the forecasted weather as such. Due to the limitations of the forecast service, the furthest point someone could         intend to leave would be 7 days from the given moment, so that would need to be taken into account

## Contributor
   Philip DeFraties  
    [Github](https://github.com/philipdefraties) | [LinkedIn](https://www.linkedin.com/in/philip-defraties-4232681b6/)
