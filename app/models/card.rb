class Card < ApplicationRecord
    enum type: [:Attack, :Skill, :Power, :Status, :Curse]
    enum deck: [:Green, :Red, :Blue, :Colorless]
    has_and_belongs_to_many :modifiers
end
