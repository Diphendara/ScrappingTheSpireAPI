FactoryBot.define do
  factory :character do
    description { Faker::LeagueOfLegends.quote }
    gold { Faker::Number.number(2) }
    hp { Faker::Number.number(2) }
    image { Faker::Internet.url }
    name { Faker::Lorem.sentence }
    relic_id nil
  end
end
