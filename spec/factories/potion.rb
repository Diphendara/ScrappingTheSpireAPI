FactoryBot.define do
    factory :potion do
      name { Faker::Lorem.word }
      effect {Faker::NewGirl.quote}
    end
  end