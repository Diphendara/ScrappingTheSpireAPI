FactoryBot.define do
    factory :event do
        description { Faker::Lorem.word }
        act_id { Faker::Number.number(5) }
    end
  end