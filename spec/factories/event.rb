FactoryBot.define do
  factory :event do
    act_id { Faker::Number.between(0, 2) }
    description { Faker::Lorem.word }
    name { Faker::Lorem.word }
  end
end
