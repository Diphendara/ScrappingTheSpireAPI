FactoryBot.define do
  factory :character do
    hp { Faker::Number.number(2) }
    gold { Faker::Number.number(2) }
    relic_id nil
    description { Faker::LeagueOfLegends.quote }
  end
end
