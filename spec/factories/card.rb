FactoryBot.define do
  factory :card do
    energyCost { Faker::Lorem.word }
    type { Faker::Number.between(0, 4) }
    deck { Faker::Number.between(0, 3) }
  end
end
