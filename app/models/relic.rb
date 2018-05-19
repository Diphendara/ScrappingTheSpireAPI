class Relic < ApplicationRecord
    enum rarity: [:Starter, :Common, :Uncommon, :Rare, :Boss, :Event, :Shop]
    has_and_belongs_to_many :keywords

    # validations
    validates_presence_of :name, :rarity, :description, :lore
end
