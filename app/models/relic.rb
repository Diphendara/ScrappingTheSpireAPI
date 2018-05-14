class Relic < ApplicationRecord
    enum rarity: [:Starter, :Common, :Uncommon, :Rare, :Boss, :Event, :Shop]
end
