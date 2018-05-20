FactoryBot.define do
  factory :relic do
    name { Faker::Lorem.word }
    rarity { Faker::Number.between(0, 6) }
    description { Faker::OnePiece.quote }
    lore [Faker::Pokemon.move]
  end
end
