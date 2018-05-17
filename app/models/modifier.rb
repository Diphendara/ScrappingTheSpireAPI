class Modifier < ApplicationRecord
    has_and_belongs_to_many :cards
    has_many :potions
    has_many :relic
end
