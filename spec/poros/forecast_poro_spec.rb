require 'rails_helper'

RSpec.describe 'Forecast' do
  it "creates a forecast object from weather hash" do
    weather_data = {:lat=>39.7385,
 :lon=>-104.9849,
 :timezone=>"America/Denver",
 :timezone_offset=>-21600,
 :current=>
  {:dt=>1618505344,
   :sunrise=>1618489302,
   :sunset=>1618537057,
   :temp=>37.76,
   :feels_like=>34.74,
   :pressure=>1012,
   :humidity=>61,
   :dew_point=>26.28,
   :uvi=>3.06,
   :clouds=>92,
   :visibility=>10000,
   :wind_speed=>4,
   :wind_deg=>0,
   :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}]},
 :minutely=>
  [{:dt=>1618505400, :precipitation=>0},
   {:dt=>1618505460, :precipitation=>0},
   {:dt=>1618505520, :precipitation=>0},
   {:dt=>1618505580, :precipitation=>0},
   {:dt=>1618505640, :precipitation=>0},
   {:dt=>1618505700, :precipitation=>0},
   {:dt=>1618505760, :precipitation=>0},
   {:dt=>1618505820, :precipitation=>0},
   {:dt=>1618505880, :precipitation=>0},
   {:dt=>1618505940, :precipitation=>0},
   {:dt=>1618506000, :precipitation=>0},
   {:dt=>1618506060, :precipitation=>0},
   {:dt=>1618506120, :precipitation=>0},
   {:dt=>1618506180, :precipitation=>0},
   {:dt=>1618506240, :precipitation=>0},
   {:dt=>1618506300, :precipitation=>0},
   {:dt=>1618506360, :precipitation=>0},
   {:dt=>1618506420, :precipitation=>0},
   {:dt=>1618506480, :precipitation=>0},
   {:dt=>1618506540, :precipitation=>0},
   {:dt=>1618506600, :precipitation=>0},
   {:dt=>1618506660, :precipitation=>0},
   {:dt=>1618506720, :precipitation=>0},
   {:dt=>1618506780, :precipitation=>0},
   {:dt=>1618506840, :precipitation=>0},
   {:dt=>1618506900, :precipitation=>0},
   {:dt=>1618506960, :precipitation=>0},
   {:dt=>1618507020, :precipitation=>0},
   {:dt=>1618507080, :precipitation=>0},
   {:dt=>1618507140, :precipitation=>0},
   {:dt=>1618507200, :precipitation=>0},
   {:dt=>1618507260, :precipitation=>0},
   {:dt=>1618507320, :precipitation=>0},
   {:dt=>1618507380, :precipitation=>0},
   {:dt=>1618507440, :precipitation=>0},
   {:dt=>1618507500, :precipitation=>0},
   {:dt=>1618507560, :precipitation=>0},
   {:dt=>1618507620, :precipitation=>0},
   {:dt=>1618507680, :precipitation=>0},
   {:dt=>1618507740, :precipitation=>0},
   {:dt=>1618507800, :precipitation=>0},
   {:dt=>1618507860, :precipitation=>0},
   {:dt=>1618507920, :precipitation=>0},
   {:dt=>1618507980, :precipitation=>0},
   {:dt=>1618508040, :precipitation=>0},
   {:dt=>1618508100, :precipitation=>0},
   {:dt=>1618508160, :precipitation=>0},
   {:dt=>1618508220, :precipitation=>0},
   {:dt=>1618508280, :precipitation=>0},
   {:dt=>1618508340, :precipitation=>0},
   {:dt=>1618508400, :precipitation=>0},
   {:dt=>1618508460, :precipitation=>0},
   {:dt=>1618508520, :precipitation=>0},
   {:dt=>1618508580, :precipitation=>0},
   {:dt=>1618508640, :precipitation=>0},
   {:dt=>1618508700, :precipitation=>0},
   {:dt=>1618508760, :precipitation=>0},
   {:dt=>1618508820, :precipitation=>0},
   {:dt=>1618508880, :precipitation=>0},
   {:dt=>1618508940, :precipitation=>0},
   {:dt=>1618509000, :precipitation=>0}],
 :hourly=>
  [{:dt=>1618502400,
    :temp=>38.55,
    :feels_like=>35.15,
    :pressure=>1012,
    :humidity=>60,
    :dew_point=>26.6,
    :uvi=>2,
    :clouds=>92,
    :visibility=>10000,
    :wind_speed=>4.54,
    :wind_deg=>312,
    :wind_gust=>5.53,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
    :pop=>0},
   {:dt=>1618506000,
    :temp=>37.76,
    :feels_like=>33.78,
    :pressure=>1012,
    :humidity=>61,
    :dew_point=>26.28,
    :uvi=>3.06,
    :clouds=>92,
    :visibility=>10000,
    :wind_speed=>5.08,
    :wind_deg=>308,
    :wind_gust=>6.06,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
    :pop=>0},
   {:dt=>1618509600,
    :temp=>39.11,
    :feels_like=>34.83,
    :pressure=>1012,
    :humidity=>59,
    :dew_point=>26.71,
    :uvi=>3.87,
    :clouds=>92,
    :visibility=>10000,
    :wind_speed=>5.82,
    :wind_deg=>323,
    :wind_gust=>5.37,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
    :pop=>0.11},
   {:dt=>1618513200,
    :temp=>42.01,
    :feels_like=>37.45,
    :pressure=>1010,
    :humidity=>54,
    :dew_point=>27.21,
    :uvi=>4.09,
    :clouds=>69,
    :visibility=>10000,
    :wind_speed=>7.2,
    :wind_deg=>340,
    :wind_gust=>6.98,
    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
    :pop=>0.27},
   {:dt=>1618516800,
    :temp=>45.64,
    :feels_like=>40.37,
    :pressure=>1008,
    :humidity=>48,
    :dew_point=>27.68,
    :uvi=>3.78,
    :clouds=>77,
    :visibility=>10000,
    :wind_speed=>10.74,
    :wind_deg=>335,
    :wind_gust=>9.15,
    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
    :pop=>0.38},
   {:dt=>1618520400,
    :temp=>44.92,
    :feels_like=>38.75,
    :pressure=>1007,
    :humidity=>57,
    :dew_point=>30.79,
    :uvi=>2.99,
    :clouds=>81,
    :visibility=>10000,
    :wind_speed=>12.93,
    :wind_deg=>338,
    :wind_gust=>14.29,
    :weather=>[{:id=>500, :main=>"Rain", :description=>"light rain", :icon=>"10d"}],
    :pop=>0.47,
    :rain=>{:"1h"=>0.3}},
   {:dt=>1618524000,
    :temp=>43,
    :feels_like=>37.27,
    :pressure=>1006,
    :humidity=>84,
    :dew_point=>38.21,
    :uvi=>0.54,
    :clouds=>83,
    :visibility=>7995,
    :wind_speed=>10.2,
    :wind_deg=>360,
    :wind_gust=>13.6,
    :weather=>[{:id=>501, :main=>"Rain", :description=>"moderate rain", :icon=>"10d"}],
    :pop=>0.87,
    :rain=>{:"1h"=>1.61}},
   {:dt=>1618527600,
    :temp=>40.03,
    :feels_like=>32.49,
    :pressure=>1008,
    :humidity=>92,
    :dew_point=>37.62,
    :uvi=>0.28,
    :clouds=>87,
    :visibility=>191,
    :wind_speed=>13.11,
    :wind_deg=>359,
    :wind_gust=>17.16,
    :weather=>[{:id=>501, :main=>"Rain", :description=>"moderate rain", :icon=>"10d"}],
    :pop=>0.95,
    :rain=>{:"1h"=>1.87}},
   {:dt=>1618531200,
    :temp=>36.16,
    :feels_like=>27.1,
    :pressure=>1010,
    :humidity=>97,
    :dew_point=>35.38,
    :uvi=>0.11,
    :clouds=>89,
    :visibility=>46,
    :wind_speed=>14.43,
    :wind_deg=>334,
    :wind_gust=>25.95,
    :weather=>[{:id=>501, :main=>"Rain", :description=>"moderate rain", :icon=>"10d"}],
    :pop=>0.95,
    :rain=>{:"1h"=>3.66}},
   {:dt=>1618534800,
    :temp=>34.12,
    :feels_like=>23.77,
    :pressure=>1012,
    :humidity=>98,
    :dew_point=>33.35,
    :uvi=>0.01,
    :clouds=>100,
    :visibility=>43,
    :wind_speed=>16.62,
    :wind_deg=>345,
    :wind_gust=>28.66,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13d"}],
    :pop=>1,
    :snow=>{:"1h"=>3.14}},
   {:dt=>1618538400,
    :temp=>33.06,
    :feels_like=>22.55,
    :pressure=>1014,
    :humidity=>98,
    :dew_point=>32.38,
    :uvi=>0,
    :clouds=>100,
    :visibility=>38,
    :wind_speed=>16.15,
    :wind_deg=>353,
    :wind_gust=>27.16,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13n"}],
    :pop=>1,
    :snow=>{:"1h"=>1.88}},
   {:dt=>1618542000,
    :temp=>32.81,
    :feels_like=>23.45,
    :pressure=>1016,
    :humidity=>98,
    :dew_point=>32.2,
    :uvi=>0,
    :clouds=>100,
    :visibility=>48,
    :wind_speed=>12.82,
    :wind_deg=>359,
    :wind_gust=>23.42,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13n"}],
    :pop=>1,
    :snow=>{:"1h"=>0.74}},
   {:dt=>1618545600,
    :temp=>31.93,
    :feels_like=>22.39,
    :pressure=>1017,
    :humidity=>98,
    :dew_point=>31.06,
    :uvi=>0,
    :clouds=>100,
    :visibility=>134,
    :wind_speed=>12.71,
    :wind_deg=>1,
    :wind_gust=>20.18,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13n"}],
    :pop=>1,
    :snow=>{:"1h"=>0.76}},
   {:dt=>1618549200,
    :temp=>31.03,
    :feels_like=>21.6,
    :pressure=>1018,
    :humidity=>96,
    :dew_point=>29.8,
    :uvi=>0,
    :clouds=>100,
    :visibility=>175,
    :wind_speed=>11.92,
    :wind_deg=>360,
    :wind_gust=>18.66,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13n"}],
    :pop=>1,
    :snow=>{:"1h"=>0.58}},
   {:dt=>1618552800,
    :temp=>30.61,
    :feels_like=>21,
    :pressure=>1018,
    :humidity=>95,
    :dew_point=>29.5,
    :uvi=>0,
    :clouds=>100,
    :visibility=>162,
    :wind_speed=>12.08,
    :wind_deg=>353,
    :wind_gust=>18.41,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13n"}],
    :pop=>1,
    :snow=>{:"1h"=>0.56}},
   {:dt=>1618556400,
    :temp=>30.24,
    :feels_like=>20.79,
    :pressure=>1019,
    :humidity=>96,
    :dew_point=>29.1,
    :uvi=>0,
    :clouds=>100,
    :visibility=>161,
    :wind_speed=>11.52,
    :wind_deg=>355,
    :wind_gust=>18.45,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13n"}],
    :pop=>1,
    :snow=>{:"1h"=>0.63}},
   {:dt=>1618560000,
    :temp=>30.31,
    :feels_like=>20.84,
    :pressure=>1020,
    :humidity=>95,
    :dew_point=>28.67,
    :uvi=>0,
    :clouds=>100,
    :visibility=>327,
    :wind_speed=>11.61,
    :wind_deg=>354,
    :wind_gust=>20.54,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13n"}],
    :pop=>0.85,
    :snow=>{:"1h"=>0.45}},
   {:dt=>1618563600,
    :temp=>29.97,
    :feels_like=>20.62,
    :pressure=>1020,
    :humidity=>95,
    :dew_point=>28.44,
    :uvi=>0,
    :clouds=>100,
    :visibility=>1436,
    :wind_speed=>11.14,
    :wind_deg=>350,
    :wind_gust=>20.92,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13n"}],
    :pop=>0.81,
    :snow=>{:"1h"=>0.21}},
   {:dt=>1618567200,
    :temp=>29.64,
    :feels_like=>20.32,
    :pressure=>1021,
    :humidity=>94,
    :dew_point=>27.91,
    :uvi=>0,
    :clouds=>100,
    :visibility=>1780,
    :wind_speed=>10.94,
    :wind_deg=>349,
    :wind_gust=>21.16,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13n"}],
    :pop=>0.81,
    :snow=>{:"1h"=>0.13}},
   {:dt=>1618570800,
    :temp=>29.62,
    :feels_like=>20.37,
    :pressure=>1021,
    :humidity=>96,
    :dew_point=>28.31,
    :uvi=>0,
    :clouds=>100,
    :visibility=>216,
    :wind_speed=>10.78,
    :wind_deg=>349,
    :wind_gust=>21.39,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13n"}],
    :pop=>0.81,
    :snow=>{:"1h"=>0.14}},
   {:dt=>1618574400,
    :temp=>29.68,
    :feels_like=>21,
    :pressure=>1022,
    :humidity=>96,
    :dew_point=>28.69,
    :uvi=>0,
    :clouds=>100,
    :visibility=>155,
    :wind_speed=>9.71,
    :wind_deg=>337,
    :wind_gust=>21.83,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13n"}],
    :pop=>0.81,
    :snow=>{:"1h"=>0.25}},
   {:dt=>1618578000,
    :temp=>29.98,
    :feels_like=>21.09,
    :pressure=>1023,
    :humidity=>96,
    :dew_point=>28.71,
    :uvi=>0.09,
    :clouds=>100,
    :visibility=>157,
    :wind_speed=>10.27,
    :wind_deg=>333,
    :wind_gust=>23.69,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.69,
    :snow=>{:"1h"=>0.38}},
   {:dt=>1618581600,
    :temp=>30.43,
    :feels_like=>20.97,
    :pressure=>1024,
    :humidity=>95,
    :dew_point=>28.96,
    :uvi=>0.45,
    :clouds=>100,
    :visibility=>185,
    :wind_speed=>11.68,
    :wind_deg=>338,
    :wind_gust=>21.61,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.73,
    :snow=>{:"1h"=>0.46}},
   {:dt=>1618585200,
    :temp=>30.85,
    :feels_like=>21.09,
    :pressure=>1024,
    :humidity=>96,
    :dew_point=>29.46,
    :uvi=>1.2,
    :clouds=>100,
    :visibility=>196,
    :wind_speed=>12.55,
    :wind_deg=>351,
    :wind_gust=>19.22,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.81,
    :snow=>{:"1h"=>0.46}},
   {:dt=>1618588800,
    :temp=>31.32,
    :feels_like=>22.51,
    :pressure=>1024,
    :humidity=>97,
    :dew_point=>30.49,
    :uvi=>2.81,
    :clouds=>100,
    :visibility=>218,
    :wind_speed=>10.74,
    :wind_deg=>1,
    :wind_gust=>15.82,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.85,
    :snow=>{:"1h"=>0.45}},
   {:dt=>1618592400,
    :temp=>31.93,
    :feels_like=>23.74,
    :pressure=>1024,
    :humidity=>98,
    :dew_point=>31.17,
    :uvi=>4.27,
    :clouds=>100,
    :visibility=>334,
    :wind_speed=>9.8,
    :wind_deg=>9,
    :wind_gust=>13.31,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.92,
    :snow=>{:"1h"=>0.43}},
   {:dt=>1618596000,
    :temp=>33.28,
    :feels_like=>25.7,
    :pressure=>1024,
    :humidity=>93,
    :dew_point=>31.41,
    :uvi=>5.39,
    :clouds=>100,
    :visibility=>2697,
    :wind_speed=>9.24,
    :wind_deg=>20,
    :wind_gust=>11.54,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.96,
    :snow=>{:"1h"=>0.26}},
   {:dt=>1618599600,
    :temp=>34.72,
    :feels_like=>27.61,
    :pressure=>1023,
    :humidity=>85,
    :dew_point=>30.58,
    :uvi=>6.11,
    :clouds=>98,
    :visibility=>4350,
    :wind_speed=>8.97,
    :wind_deg=>29,
    :wind_gust=>10.51,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.79,
    :snow=>{:"1h"=>0.13}},
   {:dt=>1618603200,
    :temp=>36.16,
    :feels_like=>29.52,
    :pressure=>1022,
    :humidity=>78,
    :dew_point=>29.64,
    :uvi=>5.66,
    :clouds=>96,
    :visibility=>4258,
    :wind_speed=>8.72,
    :wind_deg=>33,
    :wind_gust=>10,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.71,
    :snow=>{:"1h"=>0.12}},
   {:dt=>1618606800,
    :temp=>36.09,
    :feels_like=>29.55,
    :pressure=>1022,
    :humidity=>75,
    :dew_point=>28.9,
    :uvi=>4.48,
    :clouds=>95,
    :visibility=>4248,
    :wind_speed=>8.5,
    :wind_deg=>34,
    :wind_gust=>9.6,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.71,
    :snow=>{:"1h"=>0.12}},
   {:dt=>1618610400,
    :temp=>35.96,
    :feels_like=>29.43,
    :pressure=>1022,
    :humidity=>74,
    :dew_point=>28.44,
    :uvi=>2.88,
    :clouds=>96,
    :visibility=>10000,
    :wind_speed=>8.43,
    :wind_deg=>39,
    :wind_gust=>9.84,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.67,
    :snow=>{:"1h"=>0.12}},
   {:dt=>1618614000,
    :temp=>36.95,
    :feels_like=>29.98,
    :pressure=>1022,
    :humidity=>72,
    :dew_point=>28.54,
    :uvi=>1.5,
    :clouds=>97,
    :visibility=>10000,
    :wind_speed=>9.75,
    :wind_deg=>40,
    :wind_gust=>11.32,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.67,
    :snow=>{:"1h"=>0.12}},
   {:dt=>1618617600,
    :temp=>36.14,
    :feels_like=>28.81,
    :pressure=>1022,
    :humidity=>73,
    :dew_point=>28.08,
    :uvi=>0.58,
    :clouds=>95,
    :visibility=>10000,
    :wind_speed=>10.09,
    :wind_deg=>43,
    :wind_gust=>11.9,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
    :pop=>0.67},
   {:dt=>1618621200,
    :temp=>34.57,
    :feels_like=>27.41,
    :pressure=>1024,
    :humidity=>78,
    :dew_point=>28.33,
    :uvi=>0.16,
    :clouds=>91,
    :visibility=>6865,
    :wind_speed=>9.04,
    :wind_deg=>42,
    :wind_gust=>13.31,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.59,
    :snow=>{:"1h"=>0.12}},
   {:dt=>1618624800,
    :temp=>33.04,
    :feels_like=>25.74,
    :pressure=>1025,
    :humidity=>84,
    :dew_point=>28.27,
    :uvi=>0,
    :clouds=>92,
    :visibility=>6516,
    :wind_speed=>8.66,
    :wind_deg=>32,
    :wind_gust=>15.9,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13n"}],
    :pop=>0.55,
    :snow=>{:"1h"=>0.13}},
   {:dt=>1618628400,
    :temp=>32.54,
    :feels_like=>25.75,
    :pressure=>1026,
    :humidity=>83,
    :dew_point=>27.82,
    :uvi=>0,
    :clouds=>94,
    :visibility=>10000,
    :wind_speed=>7.61,
    :wind_deg=>17,
    :wind_gust=>16.82,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0.59},
   {:dt=>1618632000,
    :temp=>32.02,
    :feels_like=>32.02,
    :pressure=>1027,
    :humidity=>84,
    :dew_point=>27.41,
    :uvi=>0,
    :clouds=>81,
    :visibility=>10000,
    :wind_speed=>1.83,
    :wind_deg=>21,
    :wind_gust=>5.7,
    :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04n"}],
    :pop=>0.55},
   {:dt=>1618635600,
    :temp=>32.04,
    :feels_like=>32.04,
    :pressure=>1027,
    :humidity=>85,
    :dew_point=>27.81,
    :uvi=>0,
    :clouds=>85,
    :visibility=>10000,
    :wind_speed=>1.59,
    :wind_deg=>349,
    :wind_gust=>3.87,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0.55},
   {:dt=>1618639200,
    :temp=>32.31,
    :feels_like=>32.31,
    :pressure=>1026,
    :humidity=>84,
    :dew_point=>27.79,
    :uvi=>0,
    :clouds=>87,
    :visibility=>10000,
    :wind_speed=>2.68,
    :wind_deg=>335,
    :wind_gust=>5.73,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0.47},
   {:dt=>1618642800,
    :temp=>32.5,
    :feels_like=>32.5,
    :pressure=>1026,
    :humidity=>84,
    :dew_point=>27.9,
    :uvi=>0,
    :clouds=>100,
    :visibility=>10000,
    :wind_speed=>1.74,
    :wind_deg=>305,
    :wind_gust=>3.89,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0.15},
   {:dt=>1618646400,
    :temp=>32.61,
    :feels_like=>32.61,
    :pressure=>1026,
    :humidity=>82,
    :dew_point=>27.54,
    :uvi=>0,
    :clouds=>100,
    :visibility=>10000,
    :wind_speed=>2.15,
    :wind_deg=>308,
    :wind_gust=>4.21,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0.11},
   {:dt=>1618650000,
    :temp=>32.05,
    :feels_like=>29.26,
    :pressure=>1025,
    :humidity=>84,
    :dew_point=>27.59,
    :uvi=>0,
    :clouds=>100,
    :visibility=>10000,
    :wind_speed=>3.09,
    :wind_deg=>337,
    :wind_gust=>5.91,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0.04},
   {:dt=>1618653600,
    :temp=>31.55,
    :feels_like=>27.79,
    :pressure=>1026,
    :humidity=>85,
    :dew_point=>27.39,
    :uvi=>0,
    :clouds=>98,
    :visibility=>10000,
    :wind_speed=>3.8,
    :wind_deg=>353,
    :wind_gust=>8.3,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0},
   {:dt=>1618657200,
    :temp=>31.32,
    :feels_like=>28,
    :pressure=>1026,
    :humidity=>81,
    :dew_point=>26.11,
    :uvi=>0,
    :clouds=>99,
    :visibility=>10000,
    :wind_speed=>3.4,
    :wind_deg=>326,
    :wind_gust=>8.03,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0},
   {:dt=>1618660800,
    :temp=>31.39,
    :feels_like=>31.39,
    :pressure=>1026,
    :humidity=>80,
    :dew_point=>25.79,
    :uvi=>0,
    :clouds=>99,
    :visibility=>10000,
    :wind_speed=>2.73,
    :wind_deg=>300,
    :wind_gust=>5.08,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
    :pop=>0},
   {:dt=>1618664400,
    :temp=>31.39,
    :feels_like=>31.39,
    :pressure=>1027,
    :humidity=>78,
    :dew_point=>25.16,
    :uvi=>0.13,
    :clouds=>100,
    :visibility=>10000,
    :wind_speed=>2.75,
    :wind_deg=>315,
    :wind_gust=>5.97,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
    :pop=>0.08},
   {:dt=>1618668000,
    :temp=>31.75,
    :feels_like=>28.09,
    :pressure=>1027,
    :humidity=>81,
    :dew_point=>26.55,
    :uvi=>0.62,
    :clouds=>100,
    :visibility=>4132,
    :wind_speed=>3.74,
    :wind_deg=>345,
    :wind_gust=>6.15,
    :weather=>[{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04d"}],
    :pop=>0.12},
   {:dt=>1618671600,
    :temp=>33.21,
    :feels_like=>28.8,
    :pressure=>1027,
    :humidity=>77,
    :dew_point=>26.73,
    :uvi=>1.62,
    :clouds=>100,
    :visibility=>3828,
    :wind_speed=>4.68,
    :wind_deg=>10,
    :wind_gust=>7.78,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :pop=>0.32,
    :snow=>{:"1h"=>0.12}}],
 :daily=>
  [{:dt=>1618509600,
    :sunrise=>1618489302,
    :sunset=>1618537057,
    :moonrise=>1618496460,
    :moonset=>1618550280,
    :moon_phase=>0.11,
    :temp=>{:day=>39.11, :min=>31.03, :max=>45.64, :night=>31.03, :eve=>36.16, :morn=>37.18},
    :feels_like=>{:day=>34.83, :night=>35.08, :eve=>27.1, :morn=>35.08},
    :pressure=>1012,
    :humidity=>59,
    :dew_point=>26.71,
    :wind_speed=>16.62,
    :wind_deg=>345,
    :wind_gust=>18.66,
    :weather=>[{:id=>616, :main=>"Snow", :description=>"rain and snow", :icon=>"13d"}],
    :clouds=>92,
    :pop=>1,
    :rain=>7.44,
    :snow=>7.1,
    :uvi=>4.09},
   {:dt=>1618596000,
    :sunrise=>1618575613,
    :sunset=>1618623517,
    :moonrise=>1618584960,
    :moonset=>0,
    :moon_phase=>0.14,
    :temp=>{:day=>33.28, :min=>29.62, :max=>36.95, :night=>32.04, :eve=>36.14, :morn=>29.68},
    :feels_like=>{:day=>25.7, :night=>21, :eve=>28.81, :morn=>21},
    :pressure=>1024,
    :humidity=>93,
    :dew_point=>31.41,
    :wind_speed=>12.55,
    :wind_deg=>351,
    :wind_gust=>16.82,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13d"}],
    :clouds=>100,
    :pop=>1,
    :snow=>5.67,
    :uvi=>6.11},
   {:dt=>1618682400,
    :sunrise=>1618661926,
    :sunset=>1618709978,
    :moonrise=>1618673880,
    :moonset=>1618640160,
    :moon_phase=>0.17,
    :temp=>{:day=>37.94, :min=>31.32, :max=>40.89, :night=>36.32, :eve=>40.89, :morn=>31.39},
    :feels_like=>{:day=>31.55, :night=>31.39, :eve=>35.91, :morn=>31.39},
    :pressure=>1025,
    :humidity=>57,
    :dew_point=>24.03,
    :wind_speed=>9.93,
    :wind_deg=>46,
    :wind_gust=>7.2,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :clouds=>100,
    :pop=>0.47,
    :snow=>0.12,
    :uvi=>6.69},
   {:dt=>1618768800,
    :sunrise=>1618748239,
    :sunset=>1618796439,
    :moonrise=>1618763160,
    :moonset=>1618729920,
    :moon_phase=>0.2,
    :temp=>{:day=>50.4, :min=>32.32, :max=>56.21, :night=>50.27, :eve=>55.74, :morn=>32.32},
    :feels_like=>{:day=>46.22, :night=>27.23, :eve=>51.96, :morn=>27.23},
    :pressure=>1020,
    :humidity=>23,
    :dew_point=>13.89,
    :wind_speed=>6.8,
    :wind_deg=>241,
    :wind_gust=>11.39,
    :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
    :clouds=>0,
    :pop=>0.04,
    :uvi=>8.03},
   {:dt=>1618855200,
    :sunrise=>1618834553,
    :sunset=>1618882899,
    :moonrise=>1618852860,
    :moonset=>1618819380,
    :moon_phase=>0.23,
    :temp=>{:day=>42.75, :min=>31.53, :max=>45.82, :night=>31.53, :eve=>33.67, :morn=>41.07},
    :feels_like=>{:day=>36.43, :night=>36.81, :eve=>25.74, :morn=>36.81},
    :pressure=>1016,
    :humidity=>65,
    :dew_point=>31.75,
    :wind_speed=>12.3,
    :wind_deg=>26,
    :wind_gust=>13.53,
    :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13d"}],
    :clouds=>69,
    :pop=>1,
    :snow=>7.81,
    :uvi=>9},
   {:dt=>1618941600,
    :sunrise=>1618920868,
    :sunset=>1618969360,
    :moonrise=>1618942920,
    :moonset=>1618908480,
    :moon_phase=>0.25,
    :temp=>{:day=>38.52, :min=>27.34, :max=>42.42, :night=>38.82, :eve=>41.02, :morn=>27.34},
    :feels_like=>{:day=>38.52, :night=>27.34, :eve=>38.91, :morn=>27.34},
    :pressure=>1021,
    :humidity=>68,
    :dew_point=>28.65,
    :wind_speed=>6.87,
    :wind_deg=>17,
    :wind_gust=>7.05,
    :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
    :clouds=>88,
    :pop=>1,
    :snow=>1.79,
    :uvi=>9},
   {:dt=>1619028000,
    :sunrise=>1619007184,
    :sunset=>1619055821,
    :moonrise=>1619033340,
    :moonset=>1618997340,
    :moon_phase=>0.3,
    :temp=>{:day=>39.15, :min=>34.11, :max=>40.3, :night=>36.79, :eve=>38.39, :morn=>34.47},
    :feels_like=>{:day=>36.27, :night=>31.08, :eve=>38.39, :morn=>31.08},
    :pressure=>1019,
    :humidity=>76,
    :dew_point=>32.07,
    :wind_speed=>5.03,
    :wind_deg=>12,
    :wind_gust=>5.26,
    :weather=>[{:id=>616, :main=>"Snow", :description=>"rain and snow", :icon=>"13d"}],
    :clouds=>100,
    :pop=>0.95,
    :rain=>0.85,
    :snow=>6.76,
    :uvi=>9},
   {:dt=>1619114400,
    :sunrise=>1619093501,
    :sunset=>1619142281,
    :moonrise=>1619123880,
    :moonset=>1619085780,
    :moon_phase=>0.33,
    :temp=>{:day=>42.28, :min=>35.78, :max=>50.09, :night=>45.01, :eve=>50.09, :morn=>35.78},
    :feels_like=>{:day=>37.47, :night=>31.19, :eve=>47.43, :morn=>31.19},
    :pressure=>1013,
    :humidity=>73,
    :dew_point=>34.21,
    :wind_speed=>7.83,
    :wind_deg=>9,
    :wind_gust=>10.09,
    :weather=>[{:id=>500, :main=>"Rain", :description=>"light rain", :icon=>"10d"}],
    :clouds=>100,
    :pop=>1,
    :rain=>1.3,
    :uvi=>9}]}

    forecasts = {
    current_weather: CurrentForecast.new(weather_data[:current]),
    daily_weather: weather_data[:daily][0..4].map { |day| DailyForecast.new(day) },
    hourly_weather: weather_data[:hourly][0..7].map { |hour| HourlyForecast.new(hour) } }
    forecast = Forecast.new(weather_data)
    expect(forecast).to be_a(Forecast)
  end
end
