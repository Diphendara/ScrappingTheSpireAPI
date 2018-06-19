FactoryBot.define do
  factory :card do
    deck { Faker::Number.between(0, 3) }
    description { Faker::LeagueOfLegends.quote }
    energyCost { Faker::Lorem.word }
    image { Faker::Internet.url }
    name { Faker::Lorem.sentence }
    type { Faker::Number.between(0, 4) }
  end
end
