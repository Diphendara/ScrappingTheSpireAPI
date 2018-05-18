FactoryBot.define do
    factory :character do
      hp { Faker::Number.number(100) }
      gold { Faker::Number.number(100) }
      relic_id nil
      description {Faker::LeagueOfLegends.quote}
    end
  end