FactoryBot.define do
    factory :enemy do
        minHP { Faker::Number.number(100)}
        maxHP { Faker::Number.number(100)}
        appearance { Faker::DrWho.quote}
        isElite  { Faker::Boolean.boolean}
        isBoss  { Faker::Boolean.boolean}
        act_id  nil
    end
  end