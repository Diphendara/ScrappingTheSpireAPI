class Card < ApplicationRecord
    enum type: [:Attack, :Skill, :Power, :Status, :Curse]
    enum deck: [:Green, :Red, :Blue, :Colorless]
    has_and_belongs_to_many :keywords

     #validations
     validates_presence_of :energyCost, :type, :deck
end
