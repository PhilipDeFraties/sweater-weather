require 'rails_helper'

RSpec.describe 'Roadtrip' do
  xit "creates a roadtrip object from service data" do
    route_data = {:route=>
      {:hasTollRoad=>false,
       :hasBridge=>true,
       :boundingBox=>{:lr=>{:lng=>-104.605087, :lat=>38.265427}, :ul=>{:lng=>-104.98761, :lat=>39.738453}},
       :distance=>111.38,
       :hasTimedRestriction=>false,
       :hasTunnel=>false,
       :hasHighway=>true,
       :computedWaypoints=>[],
       :routeError=>{:errorCode=>-400, :message=>""},
       :formattedTime=>"01:44:22",
       :sessionId=>"60076b21-028d-5f21-02b4-3343-0296f4001cb7",
       :hasAccessRestriction=>false,
       :realTime=>6893,
       :hasSeasonalClosure=>false,
       :hasCountryCross=>false,
       :fuelUsed=>5.5,
       :legs=>
        [{:hasTollRoad=>false,
          :hasBridge=>true,
          :destNarrative=>"Proceed to PUEBLO, CO.",
          :distance=>111.38,
          :hasTimedRestriction=>false,
          :hasTunnel=>false,
          :hasHighway=>true,
          :index=>0,
          :formattedTime=>"01:44:22",
          :origIndex=>2,
          :hasAccessRestriction=>false,
          :hasSeasonalClosure=>false,
          :hasCountryCross=>false,
          :roadGradeStrategy=>[[]],
          :destIndex=>5,
          :time=>6262,
          :hasUnpaved=>false,
          :origNarrative=>"Go south on N Broadway.",
          :maneuvers=>
           [{:distance=>0.109,
             :streets=>["N Sherman St"],
             :narrative=>"Start out going south on N Sherman St toward E 13th Ave.",
             :turnType=>0,
             :startPoint=>{:lng=>-104.984856, :lat=>39.738453},
             :index=>0,
             :formattedTime=>"00:00:33",
             :directionName=>"South",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=39.73845291137695,-104.98485565185547|marker-1||39.73687744140625,-104.9848403930664|marker-2||&center=39.7376651763916,-104.98484802246094&defaultMarker=none&zoom=13&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>0,
             :time=>33,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-start_sm.gif",
             :direction=>4},
            {:distance=>0.135,
             :streets=>["E 13th Ave"],
             :narrative=>"Turn right onto E 13th Ave.",
             :turnType=>2,
             :startPoint=>{:lng=>-104.98484, :lat=>39.736877},
             :index=>1,
             :formattedTime=>"00:00:22",
             :directionName=>"West",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=39.73687744140625,-104.9848403930664|marker-2||39.73686981201172,-104.98737335205078|marker-3||&center=39.736873626708984,-104.9861068725586&defaultMarker=none&zoom=13&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>0,
             :time=>22,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
             :direction=>7},
            {:distance=>2.485,
             :streets=>["N Broadway"],
             :narrative=>"Turn left onto N Broadway.",
             :turnType=>6,
             :startPoint=>{:lng=>-104.987373, :lat=>39.73687},
             :index=>2,
             :formattedTime=>"00:06:00",
             :directionName=>"South",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=39.73686981201172,-104.98737335205078|marker-3||39.70085144042969,-104.98760986328125|marker-4||&center=39.7188606262207,-104.98749160766602&defaultMarker=none&zoom=8&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>1024,
             :time=>360,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
             :direction=>4},
            {:distance=>0.014,
             :streets=>[],
             :narrative=>"Turn left to take the I-25 S ramp toward Colo Spgs.",
             :turnType=>13,
             :startPoint=>{:lng=>-104.98761, :lat=>39.700851},
             :index=>3,
             :formattedTime=>"00:00:07",
             :directionName=>"Southeast",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=39.70085144042969,-104.98760986328125|marker-4||39.70073318481445,-104.98739624023438|marker-5||&center=39.70079231262207,-104.98750305175781&defaultMarker=none&zoom=15&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>0,
             :time=>7,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_ramp_sm.gif",
             :direction=>5},
            {:distance=>108.048,
             :streets=>["I-25 S"],
             :narrative=>"Merge onto I-25 S.",
             :turnType=>10,
             :startPoint=>{:lng=>-104.987396, :lat=>39.700733},
             :index=>4,
             :formattedTime=>"01:35:56",
             :directionName=>"South",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[{:extraText=>"", :text=>"25", :type=>1, :url=>"http://icons.mqcdn.com/icons/rs1.png?n=25&d=SOUTH", :direction=>4}],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=39.70073318481445,-104.98739624023438|marker-5||38.27111053466797,-104.60508728027344|marker-6||&center=38.98592185974121,-104.7962417602539&defaultMarker=none&zoom=3&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>1152,
             :time=>5756,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_merge_right_sm.gif",
             :direction=>4},
            {:distance=>0.221,
             :streets=>[],
             :narrative=>"Take the 1st Street exit, EXIT 98B.",
             :turnType=>14,
             :startPoint=>{:lng=>-104.605087, :lat=>38.271111},
             :index=>5,
             :formattedTime=>"00:00:25",
             :directionName=>"South",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[{:extraText=>"", :text=>"98B", :type=>1001, :url=>"http://icons.mqcdn.com/icons/rs1001.png?n=98B&d=RIGHT", :direction=>0}],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=38.27111053466797,-104.60508728027344|marker-6||38.26797103881836,-104.6056137084961|marker-7||&center=38.269540786743164,-104.60535049438477&defaultMarker=none&zoom=11&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>1024,
             :time=>25,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_gr_exitright_sm.gif",
             :direction=>4},
            {:distance=>0.078,
             :streets=>["E 1st St"],
             :narrative=>"Turn right onto E 1st St.",
             :turnType=>2,
             :startPoint=>{:lng=>-104.605614, :lat=>38.267971},
             :index=>6,
             :formattedTime=>"00:00:17",
             :directionName=>"West",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=38.26797103881836,-104.6056137084961|marker-7||38.267940521240234,-104.60704803466797|marker-8||&center=38.2679557800293,-104.60633087158203&defaultMarker=none&zoom=15&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>0,
             :time=>17,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
             :direction=>7},
            {:distance=>0.079,
             :streets=>["W City Center Dr"],
             :narrative=>"E 1st St becomes W City Center Dr.",
             :turnType=>0,
             :startPoint=>{:lng=>-104.607048, :lat=>38.267941},
             :index=>7,
             :formattedTime=>"00:00:17",
             :directionName=>"West",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=38.267940521240234,-104.60704803466797|marker-8||38.267913818359375,-104.60850524902344|marker-9||&center=38.267927169799805,-104.6077766418457&defaultMarker=none&zoom=15&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>0,
             :time=>17,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_straight_sm.gif",
             :direction=>7},
            {:distance=>0.211,
             :streets=>["Central Main St"],
             :narrative=>"Turn left onto Central Main St.",
             :turnType=>6,
             :startPoint=>{:lng=>-104.608505, :lat=>38.267914},
             :index=>8,
             :formattedTime=>"00:00:25",
             :directionName=>"Southwest",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=x1D1mjuAyO5OsMC5Z9BZgKUwwGQyW71v&size=225,160&locations=38.267913818359375,-104.60850524902344|marker-9||38.26542663574219,-104.61041259765625|marker-10||&center=38.26667022705078,-104.60945892333984&defaultMarker=none&zoom=12&rand=1456593346&session=60076b21-028d-5f21-02b4-3343-0296f4001cb7",
             :transportMode=>"AUTO",
             :attributes=>0,
             :time=>25,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
             :direction=>6},
            {:distance=>0,
             :streets=>[],
             :narrative=>"Welcome to PUEBLO, CO.",
             :turnType=>-1,
             :startPoint=>{:lng=>-104.610413, :lat=>38.265427},
             :index=>9,
             :formattedTime=>"00:00:00",
             :directionName=>"",
             :maneuverNotes=>[],
             :linkIds=>[],
             :signs=>[],
             :transportMode=>"AUTO",
             :attributes=>0,
             :time=>0,
             :iconUrl=>"http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-end_sm.gif",
             :direction=>0}],
          :hasFerry=>false}],
       :options=>
        {:arteryWeights=>[],
         :cyclingRoadFactor=>1,
         :timeType=>0,
         :useTraffic=>false,
         :returnLinkDirections=>false,
         :countryBoundaryDisplay=>true,
         :enhancedNarrative=>false,
         :locale=>"en_US",
         :tryAvoidLinkIds=>[],
         :drivingStyle=>2,
         :doReverseGeocode=>true,
         :generalize=>-1,
         :mustAvoidLinkIds=>[],
         :sideOfStreetDisplay=>true,
         :routeType=>"FASTEST",
         :avoidTimedConditions=>false,
         :routeNumber=>0,
         :shapeFormat=>"raw",
         :maxWalkingDistance=>-1,
         :destinationManeuverDisplay=>true,
         :transferPenalty=>-1,
         :narrativeType=>"text",
         :walkingSpeed=>-1,
         :urbanAvoidFactor=>-1,
         :stateBoundaryDisplay=>true,
         :unit=>"M",
         :highwayEfficiency=>22,
         :maxLinkId=>0,
         :maneuverPenalty=>-1,
         :avoidTripIds=>[],
         :filterZoneFactor=>-1,
         :manmaps=>"true"},
       :locations=>
        [{:dragPoint=>false,
          :displayLatLng=>{:lng=>-104.984856, :lat=>39.738453},
          :adminArea4=>"Denver County",
          :adminArea5=>"Denver",
          :postalCode=>"",
          :adminArea1=>"US",
          :adminArea3=>"CO",
          :type=>"s",
          :sideOfStreet=>"N",
          :geocodeQualityCode=>"A5XAX",
          :adminArea4Type=>"County",
          :linkId=>40287819,
          :street=>"",
          :adminArea5Type=>"City",
          :geocodeQuality=>"CITY",
          :adminArea1Type=>"Country",
          :adminArea3Type=>"State",
          :latLng=>{:lng=>-104.984853, :lat=>39.738453}},
         {:dragPoint=>false,
          :displayLatLng=>{:lng=>-104.610413, :lat=>38.265427},
          :adminArea4=>"Pueblo County",
          :adminArea5=>"Pueblo",
          :postalCode=>"",
          :adminArea1=>"US",
          :adminArea3=>"CO",
          :type=>"s",
          :sideOfStreet=>"N",
          :geocodeQualityCode=>"A5XAX",
          :adminArea4Type=>"County",
          :linkId=>54760889,
          :street=>"",
          :adminArea5Type=>"City",
          :geocodeQuality=>"CITY",
          :adminArea1Type=>"Country",
          :adminArea3Type=>"State",
          :latLng=>{:lng=>-104.610415, :lat=>38.265425}}],
       :time=>6262,
       :hasUnpaved=>false,
       :locationSequence=>[0, 1],
       :hasFerry=>false},
     :info=>{:statuscode=>0, :copyright=>{:imageAltText=>"© 2020 MapQuest, Inc.", :imageUrl=>"http://api.mqcdn.com/res/mqlogo.gif", :text=>"© 2020 MapQuest, Inc."}, :messages=>[]}}
    forecast_data = {:lat=>38.2654,
   :lon=>-104.6104,
   :timezone=>"America/Denver",
   :timezone_offset=>-25200,
   :current=>
    {:dt=>1611098913,
     :sunrise=>1611065519,
     :sunset=>1611101172,
     :temp=>33.21,
     :feels_like=>23.41,
     :pressure=>1028,
     :humidity=>51,
     :dew_point=>18.72,
     :uvi=>0.22,
     :clouds=>1,
     :visibility=>10000,
     :wind_speed=>8.05,
     :wind_deg=>180,
     :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}]},
   :hourly=>
    [{:dt=>1611097200,
      :temp=>33.21,
      :feels_like=>24.31,
      :pressure=>1028,
      :humidity=>51,
      :dew_point=>18.72,
      :uvi=>0.22,
      :clouds=>1,
      :visibility=>10000,
      :wind_speed=>6.44,
      :wind_deg=>177,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611100800,
      :temp=>32.77,
      :feels_like=>25.81,
      :pressure=>1029,
      :humidity=>70,
      :dew_point=>25,
      :uvi=>0,
      :clouds=>15,
      :visibility=>10000,
      :wind_speed=>4.23,
      :wind_deg=>164,
      :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02d"}],
      :pop=>0},
     {:dt=>1611104400,
      :temp=>31.24,
      :feels_like=>25.77,
      :pressure=>1030,
      :humidity=>83,
      :dew_point=>27.21,
      :uvi=>0,
      :clouds=>3,
      :visibility=>10000,
      :wind_speed=>2.1,
      :wind_deg=>178,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611108000,
      :temp=>29.98,
      :feels_like=>24.39,
      :pressure=>1031,
      :humidity=>90,
      :dew_point=>27.72,
      :uvi=>0,
      :clouds=>1,
      :visibility=>10000,
      :wind_speed=>2.48,
      :wind_deg=>185,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611111600,
      :temp=>29.55,
      :feels_like=>23.41,
      :pressure=>1031,
      :humidity=>91,
      :dew_point=>27.52,
      :uvi=>0,
      :clouds=>1,
      :visibility=>10000,
      :wind_speed=>3.42,
      :wind_deg=>175,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611115200,
      :temp=>28.69,
      :feels_like=>23.54,
      :pressure=>1031,
      :humidity=>92,
      :dew_point=>20.97,
      :uvi=>0,
      :clouds=>1,
      :visibility=>10000,
      :wind_speed=>1.52,
      :wind_deg=>152,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611118800,
      :temp=>28.22,
      :feels_like=>22.93,
      :pressure=>1031,
      :humidity=>91,
      :dew_point=>20.21,
      :uvi=>0,
      :clouds=>1,
      :visibility=>10000,
      :wind_speed=>1.63,
      :wind_deg=>177,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611122400,
      :temp=>27.97,
      :feels_like=>21.63,
      :pressure=>1030,
      :humidity=>91,
      :dew_point=>19.87,
      :uvi=>0,
      :clouds=>1,
      :visibility=>10000,
      :wind_speed=>3.44,
      :wind_deg=>189,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611126000,
      :temp=>27.12,
      :feels_like=>21.6,
      :pressure=>1030,
      :humidity=>92,
      :dew_point=>19.85,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>1.88,
      :wind_deg=>235,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611129600,
      :temp=>27.19,
      :feels_like=>20.98,
      :pressure=>1029,
      :humidity=>91,
      :dew_point=>19.56,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>3.06,
      :wind_deg=>278,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611133200,
      :temp=>27.27,
      :feels_like=>21.02,
      :pressure=>1028,
      :humidity=>91,
      :dew_point=>19.06,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>3.13,
      :wind_deg=>226,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611136800,
      :temp=>27.97,
      :feels_like=>21.11,
      :pressure=>1027,
      :humidity=>90,
      :dew_point=>18.48,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>4.29,
      :wind_deg=>274,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611140400,
      :temp=>28.78,
      :feels_like=>21.16,
      :pressure=>1026,
      :humidity=>88,
      :dew_point=>17.65,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>5.7,
      :wind_deg=>261,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611144000,
      :temp=>29.8,
      :feels_like=>21.33,
      :pressure=>1025,
      :humidity=>87,
      :dew_point=>17.49,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>7.38,
      :wind_deg=>265,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611147600,
      :temp=>30.65,
      :feels_like=>21.94,
      :pressure=>1024,
      :humidity=>87,
      :dew_point=>17.89,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>7.99,
      :wind_deg=>261,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611151200,
      :temp=>30.94,
      :feels_like=>22.12,
      :pressure=>1023,
      :humidity=>87,
      :dew_point=>18.23,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>8.25,
      :wind_deg=>272,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611154800,
      :temp=>33.69,
      :feels_like=>23.79,
      :pressure=>1023,
      :humidity=>81,
      :dew_point=>19.06,
      :uvi=>0.23,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>10.38,
      :wind_deg=>283,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611158400,
      :temp=>38.97,
      :feels_like=>27.64,
      :pressure=>1020,
      :humidity=>67,
      :dew_point=>21.11,
      :uvi=>0.74,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>13.02,
      :wind_deg=>288,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611162000,
      :temp=>42.82,
      :feels_like=>30.31,
      :pressure=>1018,
      :humidity=>59,
      :dew_point=>23.14,
      :uvi=>1.44,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>15.26,
      :wind_deg=>288,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611165600,
      :temp=>46.27,
      :feels_like=>35.11,
      :pressure=>1017,
      :humidity=>53,
      :dew_point=>25.25,
      :uvi=>2.08,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>12.97,
      :wind_deg=>278,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611169200,
      :temp=>48.74,
      :feels_like=>39.25,
      :pressure=>1015,
      :humidity=>49,
      :dew_point=>27.05,
      :uvi=>2.3,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>10.11,
      :wind_deg=>271,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611172800,
      :temp=>50.58,
      :feels_like=>42.24,
      :pressure=>1013,
      :humidity=>46,
      :dew_point=>28.27,
      :uvi=>2.04,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>8.1,
      :wind_deg=>262,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611176400,
      :temp=>51.98,
      :feels_like=>43.86,
      :pressure=>1012,
      :humidity=>45,
      :dew_point=>29.32,
      :uvi=>1.42,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>7.87,
      :wind_deg=>240,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611180000,
      :temp=>52.02,
      :feels_like=>44.49,
      :pressure=>1012,
      :humidity=>45,
      :dew_point=>31.12,
      :uvi=>0.72,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>6.85,
      :wind_deg=>239,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611183600,
      :temp=>49.1,
      :feels_like=>42.26,
      :pressure=>1012,
      :humidity=>51,
      :dew_point=>32.02,
      :uvi=>0.22,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>5.73,
      :wind_deg=>239,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611187200,
      :temp=>43.07,
      :feels_like=>36.32,
      :pressure=>1013,
      :humidity=>63,
      :dew_point=>30.78,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>5.46,
      :wind_deg=>239,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611190800,
      :temp=>41.72,
      :feels_like=>34.11,
      :pressure=>1014,
      :humidity=>65,
      :dew_point=>28.18,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>6.89,
      :wind_deg=>272,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611194400,
      :temp=>39.96,
      :feels_like=>31.98,
      :pressure=>1015,
      :humidity=>68,
      :dew_point=>26.31,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>7.38,
      :wind_deg=>276,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611198000,
      :temp=>38.98,
      :feels_like=>29.89,
      :pressure=>1016,
      :humidity=>70,
      :dew_point=>24.55,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>9.31,
      :wind_deg=>282,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611201600,
      :temp=>37.94,
      :feels_like=>28.89,
      :pressure=>1016,
      :humidity=>72,
      :dew_point=>23.4,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>9.15,
      :wind_deg=>282,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611205200,
      :temp=>38.23,
      :feels_like=>28.38,
      :pressure=>1017,
      :humidity=>71,
      :dew_point=>22.93,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>10.56,
      :wind_deg=>285,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611208800,
      :temp=>38.17,
      :feels_like=>28.15,
      :pressure=>1018,
      :humidity=>71,
      :dew_point=>22.6,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>10.85,
      :wind_deg=>274,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611212400,
      :temp=>37.63,
      :feels_like=>28.29,
      :pressure=>1018,
      :humidity=>72,
      :dew_point=>22.39,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>9.62,
      :wind_deg=>268,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611216000,
      :temp=>37.69,
      :feels_like=>27.5,
      :pressure=>1018,
      :humidity=>71,
      :dew_point=>22.05,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>11.05,
      :wind_deg=>283,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611219600,
      :temp=>37.58,
      :feels_like=>26.35,
      :pressure=>1017,
      :humidity=>72,
      :dew_point=>21.87,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>12.95,
      :wind_deg=>284,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611223200,
      :temp=>37.8,
      :feels_like=>24.44,
      :pressure=>1017,
      :humidity=>71,
      :dew_point=>21.78,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>16.69,
      :wind_deg=>287,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611226800,
      :temp=>37.56,
      :feels_like=>24.3,
      :pressure=>1017,
      :humidity=>71,
      :dew_point=>21.63,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>16.49,
      :wind_deg=>284,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611230400,
      :temp=>36.88,
      :feels_like=>24.24,
      :pressure=>1017,
      :humidity=>73,
      :dew_point=>21.54,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>15.37,
      :wind_deg=>288,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611234000,
      :temp=>35.8,
      :feels_like=>25.09,
      :pressure=>1017,
      :humidity=>77,
      :dew_point=>21.49,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>12.01,
      :wind_deg=>278,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611237600,
      :temp=>35.4,
      :feels_like=>25.02,
      :pressure=>1018,
      :humidity=>78,
      :dew_point=>21.24,
      :uvi=>0,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>11.41,
      :wind_deg=>285,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01n"}],
      :pop=>0},
     {:dt=>1611241200,
      :temp=>36.7,
      :feels_like=>26.26,
      :pressure=>1018,
      :humidity=>74,
      :dew_point=>21.16,
      :uvi=>0.22,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>11.5,
      :wind_deg=>293,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611244800,
      :temp=>41.16,
      :feels_like=>30.31,
      :pressure=>1017,
      :humidity=>62,
      :dew_point=>21.76,
      :uvi=>0.73,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>12.21,
      :wind_deg=>304,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611248400,
      :temp=>44.71,
      :feels_like=>34.92,
      :pressure=>1016,
      :humidity=>54,
      :dew_point=>22.01,
      :uvi=>1.42,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>10.31,
      :wind_deg=>317,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611252000,
      :temp=>47.08,
      :feels_like=>40.21,
      :pressure=>1015,
      :humidity=>50,
      :dew_point=>22.15,
      :uvi=>2.04,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>5.23,
      :wind_deg=>4,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611255600,
      :temp=>47.84,
      :feels_like=>39.99,
      :pressure=>1014,
      :humidity=>48,
      :dew_point=>22.15,
      :uvi=>2.48,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>6.89,
      :wind_deg=>79,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611259200,
      :temp=>48.38,
      :feels_like=>39.88,
      :pressure=>1012,
      :humidity=>47,
      :dew_point=>22.19,
      :uvi=>2.2,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>8.03,
      :wind_deg=>93,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611262800,
      :temp=>48.4,
      :feels_like=>39.67,
      :pressure=>1011,
      :humidity=>47,
      :dew_point=>22.05,
      :uvi=>1.52,
      :clouds=>0,
      :visibility=>10000,
      :wind_speed=>8.46,
      :wind_deg=>104,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :pop=>0},
     {:dt=>1611266400,
      :temp=>47.86,
      :feels_like=>39.29,
      :pressure=>1011,
      :humidity=>48,
      :dew_point=>22.03,
      :uvi=>0.81,
      :clouds=>14,
      :visibility=>10000,
      :wind_speed=>8.16,
      :wind_deg=>104,
      :weather=>[{:id=>801, :main=>"Clouds", :description=>"few clouds", :icon=>"02d"}],
      :pop=>0}],
   :daily=>
    [{:dt=>1611082800,
      :sunrise=>1611065519,
      :sunset=>1611101172,
      :temp=>{:day=>32.56, :min=>27.5, :max=>35.28, :night=>27.97, :eve=>31.24, :morn=>27.5},
      :feels_like=>{:day=>26.19, :night=>21.63, :eve=>25.77, :morn=>22.35},
      :pressure=>1033,
      :humidity=>85,
      :dew_point=>19.31,
      :wind_speed=>4.12,
      :wind_deg=>218,
      :weather=>[{:id=>601, :main=>"Snow", :description=>"snow", :icon=>"13d"}],
      :clouds=>100,
      :pop=>0.76,
      :snow=>2.77,
      :uvi=>2.19},
     {:dt=>1611169200,
      :sunrise=>1611151889,
      :sunset=>1611187638,
      :temp=>{:day=>48.74, :min=>27.12, :max=>52.02, :night=>38.17, :eve=>41.72, :morn=>30.65},
      :feels_like=>{:day=>39.25, :night=>28.15, :eve=>34.11, :morn=>21.94},
      :pressure=>1015,
      :humidity=>49,
      :dew_point=>27.05,
      :wind_speed=>10.11,
      :wind_deg=>271,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :clouds=>0,
      :pop=>0,
      :uvi=>2.3},
     {:dt=>1611255600,
      :sunrise=>1611238257,
      :sunset=>1611274104,
      :temp=>{:day=>47.84, :min=>34.27, :max=>48.4, :night=>34.27, :eve=>40.14, :morn=>35.8},
      :feels_like=>{:day=>39.99, :night=>27.82, :eve=>33.42, :morn=>25.09},
      :pressure=>1014,
      :humidity=>48,
      :dew_point=>22.15,
      :wind_speed=>6.89,
      :wind_deg=>79,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :clouds=>0,
      :pop=>0,
      :uvi=>2.48},
     {:dt=>1611342000,
      :sunrise=>1611324624,
      :sunset=>1611360571,
      :temp=>{:day=>38.03, :min=>28.35, :max=>42.53, :night=>34.18, :eve=>39.83, :morn=>28.35},
      :feels_like=>{:day=>33.1, :night=>29.35, :eve=>33.28, :morn=>22.55},
      :pressure=>1016,
      :humidity=>69,
      :dew_point=>20.64,
      :wind_speed=>1.61,
      :wind_deg=>20,
      :weather=>[{:id=>802, :main=>"Clouds", :description=>"scattered clouds", :icon=>"03d"}],
      :clouds=>31,
      :pop=>0,
      :uvi=>2.33},
     {:dt=>1611428400,
      :sunrise=>1611410988,
      :sunset=>1611447038,
      :temp=>{:day=>49.35, :min=>33.87, :max=>55.99, :night=>38.32, :eve=>48.76, :morn=>33.87},
      :feels_like=>{:day=>42.66, :night=>25.48, :eve=>39.96, :morn=>28},
      :pressure=>1005,
      :humidity=>46,
      :dew_point=>23.07,
      :wind_speed=>4.92,
      :wind_deg=>267,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :clouds=>9,
      :pop=>0,
      :uvi=>2.37},
     {:dt=>1611514800,
      :sunrise=>1611497351,
      :sunset=>1611533506,
      :temp=>{:day=>37.6, :min=>30.31, :max=>42.73, :night=>33.6, :eve=>40.14, :morn=>30.31},
      :feels_like=>{:day=>31.55, :night=>27.5, :eve=>30.92, :morn=>23.77},
      :pressure=>1007,
      :humidity=>75,
      :dew_point=>26.42,
      :wind_speed=>4,
      :wind_deg=>125,
      :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
      :clouds=>19,
      :pop=>0.29,
      :snow=>0.13,
      :uvi=>3},
     {:dt=>1611601200,
      :sunrise=>1611583712,
      :sunset=>1611619974,
      :temp=>{:day=>41.23, :min=>28.4, :max=>45.12, :night=>32.31, :eve=>41.47, :morn=>28.4},
      :feels_like=>{:day=>33.51, :night=>26.92, :eve=>32.94, :morn=>22.44},
      :pressure=>1007,
      :humidity=>55,
      :dew_point=>12.51,
      :wind_speed=>6.04,
      :wind_deg=>283,
      :weather=>[{:id=>800, :main=>"Clear", :description=>"clear sky", :icon=>"01d"}],
      :clouds=>0,
      :pop=>0,
      :uvi=>3},
     {:dt=>1611687600,
      :sunrise=>1611670071,
      :sunset=>1611706442,
      :temp=>{:day=>38.35, :min=>28.53, :max=>40.39, :night=>28.94, :eve=>37.29, :morn=>28.53},
      :feels_like=>{:day=>20.23, :night=>19.83, :eve=>26.51, :morn=>21.02},
      :pressure=>1003,
      :humidity=>50,
      :dew_point=>-1.68,
      :wind_speed=>23.53,
      :wind_deg=>278,
      :weather=>[{:id=>600, :main=>"Snow", :description=>"light snow", :icon=>"13d"}],
      :clouds=>100,
      :pop=>0.36,
      :snow=>0.38,
      :uvi=>3}]}
    restaurant_data = {:R=>{:res_id=>17589269, :is_grocery_store=>false, :has_menu_status=>{:delivery=>-1, :takeaway=>-1}},
     :id=>"17589269",
     :name=>"Angelo's Pizza Parlor",
     :url=>"https://www.zomato.com/pueblo-co/angelos-pizza-parlor-pueblo?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1",
     :location=>
      {:address=>"105 E Riverwalk, Pueblo 81003",
       :locality=>"Pueblo",
       :city=>"Pueblo",
       :city_id=>535,
       :latitude=>"38.2895300000",
       :longitude=>"-104.6288840000",
       :zipcode=>"81003",
       :country_id=>216,
       :locality_verbose=>"Pueblo, Pueblo"},
     :switch_to_order_menu=>0,
     :cuisines=>"Italian, Pizza",
     :timings=>"11 AM to 9 PM (Mon, Tue, Wed, Thu, Sun), 11 AM to 10 PM (Fri-Sat)",
     :average_cost_for_two=>25,
     :price_range=>2,
     :currency=>"$",
     :highlights=>["Cash", "Dinner", "Credit Card", "Takeaway Available", "Lunch", "Serves Alcohol", "Outdoor Seating", "Kid Friendly", "Waterfront", "Sports Bar", "Indoor Seating", "Fullbar"],
     :offers=>[],
     :opentable_support=>0,
     :is_zomato_book_res=>0,
     :mezzo_provider=>"OTHER",
     :is_book_form_web_view=>0,
     :book_form_web_view_url=>"",
     :book_again_url=>"",
     :thumb=>"",
     :user_rating=>{:aggregate_rating=>"3.5", :rating_text=>"Good", :rating_color=>"9ACD32", :rating_obj=>{:title=>{:text=>"3.5"}, :bg_color=>{:type=>"lime", :tint=>"500"}}, :votes=>63},
     :all_reviews_count=>28,
     :photos_url=>"https://www.zomato.com/pueblo-co/angelos-pizza-parlor-pueblo/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop",
     :photo_count=>1,
     :menu_url=>"https://www.zomato.com/pueblo-co/angelos-pizza-parlor-pueblo/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop",
     :featured_image=>"",
     :medio_provider=>false,
     :has_online_delivery=>0,
     :is_delivering_now=>0,
     :store_type=>"",
     :include_bogo_offers=>true,
     :deeplink=>"zomato://restaurant/17589269",
     :is_table_reservation_supported=>0,
     :has_table_booking=>0,
     :events_url=>"https://www.zomato.com/pueblo-co/angelos-pizza-parlor-pueblo/events#tabtop?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1",
     :phone_numbers=>"(719) 544-8588",
     :all_reviews=>{:reviews=>[{:review=>[]}, {:review=>[]}, {:review=>[]}, {:review=>[]}, {:review=>[]}]},
     :establishment=>["Fast Food"],
     :establishment_types=>[]}

    foodie = Foodie.new(route_data, forecast_data, restaurant_data)
    expect(foodie).to be_a(Foodie)
    expect(foodie.id).to eq(nil)
    expect(foodie.end_location).to be_a(String)
    expect(foodie.end_location).to eq('Pueblo, CO')
    expect(foodie.forecast).to be_a(Hash)
    expect(foodie.forecast).to have_key(:summary)
    expect(foodie.forecast[:summary]).to eq('clear sky')
    expect(foodie.forecast).to have_key(:temperature)
    expect(foodie.forecast[:temperature]).to be_a(String)
    expect(foodie.restaurant).to be_a(Hash)
    expect(foodie.restaurant).to have_key(:name)
    expect(foodie.restaurant[:name]).to eq("Angelo's Pizza Parlor")
    expect(foodie.restaurant).to have_key(:address)
    expect(foodie.restaurant[:address]).to eq('105 E Riverwalk, Pueblo 81003')
    expect(foodie.travel_time).to be_a(String)
    expect(foodie.travel_time).to eq('01:44:22')
  end
end
