FactoryBot.define do
  factory :enemy do
    act_id Faker::Number.between(0, 2)
    description { Faker::DrWho.quote }
    image { Faker::Internet.url }
    isBoss { Faker::Boolean.boolean }
    isElite { Faker::Boolean.boolean }
    maxHP { Faker::Number.number(3) }
    minHP { Faker::Number.number(2) }
    name { Faker::Lorem.sentence }
  end
end
