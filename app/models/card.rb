class Card < ApplicationRecord
    enum type: [:Attack, :Skill, :Power, :Status, :Curse]
    enum deck: [:Green, :Red, :Blue]
    //TODO add debuff and buff enums
end
