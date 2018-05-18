FactoryBot.define do
    factory :card do
        energyCost { Faker::Lorem.word }
        type {Faker::Number.number(5)}
        deck {Faker::Number.number(4)}
    end
  end