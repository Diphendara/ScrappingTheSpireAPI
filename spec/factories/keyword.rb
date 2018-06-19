FactoryBot.define do
  factory :keyword do
    description { Faker::Friends.quote }
    name { Faker::Lorem.word }
  end
end
