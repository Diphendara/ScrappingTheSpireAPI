FactoryBot.define do
  factory :potion do
    effect { Faker::NewGirl.quote }
    image { Faker::Internet.url }
    name { Faker::Lorem.word }
  end
end
