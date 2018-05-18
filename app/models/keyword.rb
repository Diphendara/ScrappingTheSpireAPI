class Keyword < ApplicationRecord
    has_and_belongs_to_many :potions    
    has_and_belongs_to_many :relics
    has_and_belongs_to_many :cards
end
