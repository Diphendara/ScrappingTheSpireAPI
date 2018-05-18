FactoryBot.define do
    factory :relic do
        name { Faker::Lorem.word }
        rarity {Faker::Number.number(7)}
        description {Faker::OnePiece.quote}      
        lore [Faker::Pokemon.move]
    end
  end