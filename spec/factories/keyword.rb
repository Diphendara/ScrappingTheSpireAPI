FactoryBot.define do
    factory :keyword do
      name { Faker::Lorem.word }
      description { Faker::Friends.quote }

    end
  end