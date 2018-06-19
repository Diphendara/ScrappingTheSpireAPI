FactoryBot.define do
  factory :relic do
    description { Faker::OnePiece.quote }
    image { Faker::Internet.url }
    lore [Faker::Pokemon.move]
    name { Faker::Lorem.word }
    rarity { Faker::Number.between(0, 6) }
  end
end
