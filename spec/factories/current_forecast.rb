FactoryBot.define do
  factory :current_forecast do
    datetime { Time.now }
    sunrise { Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :morning) }
    sunset { Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :evening) }
    temperature { Faker::Number.decimal(l_digits: 2) }
    feels_like { Faker::Number.decimal(l_digits: 2) }
    humidity { Faker::Number.between(from: 1, to: 99) }
    uvi { Faker::Number.between(from: 1, to: 99) }
    visibility { Faker::Number.between(from: 1, to: 10000 ) }
    conditions { Faker::Lorem.sentence(word_count: 2) }
    icon { Faker::Lorem.word }
  end
end
